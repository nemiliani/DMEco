import pandas
import numpy
import sys
import re
import json
import argparse
import matplotlib.pyplot as plt

from sklearn import tree
from sklearn.metrics import roc_curve, auc
from sklearn.preprocessing import label_binarize
from sklearn.multiclass import OneVsRestClassifier
from sklearn.cross_validation import train_test_split
from sklearn.utils import array2d

pandas.options.mode.chained_assignment = None

MOST_MIN = -149849333.41
NAN_REPLACE = -99999999999999

def get_leafs(dot_filename):
    with open(dot_filename, 'r') as f:
        leafs = [line.strip() for line in f if line.find('value') != -1]
    res = []
    for l in leafs:
        p = re.compile('nodeid\s=\s[\d]+')
        begin, end = p.search(l).span()
        node_id = int(l[begin:end].split('=')[1].strip())        
        p = re.compile('samples\s=\s[\d]+')
        begin, end = p.search(l).span()
        total = int(l[begin:end].split('=')[1].strip())
        p = re.compile('value\s+=\s+\[[\d\s\.]+\]')
        begin, end = p.search(l).span()
        vals = [int(i.strip('.')) for i in l[begin:end].strip('value = []').split()]
        assert(total == sum(vals))
        res.append({'node_id': node_id, 'value': vals, 'probs':[]})
    return res

def get_leaf_gain(leaf):
    return (5000 * leaf['BAJA+2']) - (100 * (leaf['BAJA+1'] + leaf['BAJA+2'] + leaf['CONTINUA']))
    
def get_gain(baja_1, baja_2, cont):
    return (5000 * baja_2) - (100 * (baja_1 + baja_2 + cont))

def args_to_json(args):
    p = {}
    p['test_ratio'] = args.test_ratio
    p['split_seed'] = args.split_seed
    p['criterion'] = args.criterion
    p['max_depth'] = args.max_depth
    p['min_samples_split'] = args.min_samples_split
    p['min_samples_leaf'] = args.min_samples_leaf
    p['splitter'] = args.splitter
    p['add_probs'] = args.add_probs
    return json.dumps(p)

if __name__ == '__main__':

    parser = argparse.ArgumentParser(
            description='decision tree evaluator.')
    parser.add_argument('-d', '--dot_file', type=str, default='tree.dot', help='output dot file')
    parser.add_argument('-f', '--data_file', type=str, help='train data file')
    parser.add_argument('-t', '--test_ratio', type=float, default=0.3, help='test set portion')
    parser.add_argument('-s', '--split_seed', type=int, default=0, help='seed for the shuffle function')
    parser.add_argument('-c', '--criterion', type=str, choices=['gini','entropy'], default='gini',
                                help='split criterion')
    parser.add_argument('-m', '--max_depth', type=int, default=3, help='max depth for decision tree')
    parser.add_argument('-i', '--min_samples_split', type=int, default=3, help='min samples for split')
    parser.add_argument('-l', '--min_samples_leaf', type=int, default=1, help='min samples on a leaf')
    parser.add_argument('-p', '--splitter', type=str, choices=['best', 'random'], default='best', 
                                    help='startegy to choose the split at each node')
    parser.add_argument('-r', '--print_probs', type=str, help='print prob b2 to csv file')
    parser.add_argument('-a', '--add_probs', type=str, help='adds probs from csv file')
    args = parser.parse_args()
    print args_to_json(args)
    # read the csv files
    #print 'reading data ...'
    april = pandas.read_csv(args.data_file, sep='\t', low_memory=False, header=0)
    # create a df without the class column
    cols = [col for col in april.columns if col != 'clase']
    april_data = april[cols]
    # transform s/n cols to 0/1 columns    
    # transform NAN in numeric columns to a known numeric value so that
    # the tree won't complain on cast time
    #print 'working on data ...'    
    mins = []
    for c in cols: 
        if april_data[c].dtype == 'object':
            april_data[c] = april_data[c].apply(lambda x : 0 if x.upper() == 'N' else 1)
        elif april_data[c].dtype == 'float64':
            april_data[c] = april_data[c].fillna(NAN_REPLACE)
            mins.append(april_data[c].min())
    if args.add_probs:
        april_data['prob_b2'] = numpy.genfromtxt(args.add_probs, delimiter=',')
    assert(NAN_REPLACE == min(mins))
    #print 'training ... '
    # split the data set
    X_train, X_test, y_train, y_test = train_test_split(
                april_data, april['clase'], 
                test_size=args.test_ratio, 
                random_state=args.split_seed)
    clf = tree.DecisionTreeClassifier(
            max_depth=args.max_depth,
            criterion=args.criterion,
            min_samples_split=args.min_samples_split,
            min_samples_leaf=args.min_samples_leaf,
            splitter=args.splitter)
    clf = clf.fit(X_train, y_train)
    #print 'done!'
    tree.export_graphviz(clf, out_file=args.dot_file)
    leafs = get_leafs(args.dot_file)
    # create a list of leafs with the ids and assigned values 
    leaf_maps = [{ 
              "value": dict(zip(list(clf.classes_), list(leaf['value']))),
              "node_id": leaf['node_id']
               } for leaf in leafs]
    gains = []
    for leaf in leaf_maps:
        gain = get_leaf_gain(leaf['value'])
        gains.append((leaf['node_id'], gain))
    train_gain = sum([gain[1] for gain in gains if gain[1] > 0])
    
    # save the nodes id with positive gain
    positive_nodes = [gain[0] for gain in gains if gain[1] > 0]
    # some black magic casting in order to pass the 
    # data set into the underlying implementation    
    X = array2d(X_test, dtype=clf.DTYPE)
    #print 'predicting nodes ...'    
    predicted_nodes = clf.tree_.apply(X)
    predicted_proba = clf.predict_proba(X_test)
    # create a dataframe
    pdf = pandas.DataFrame(
                {'node_id': predicted_nodes, 'pclass': y_test})
    
    res = []    
    for nid in positive_nodes:
        df = pdf[pdf.node_id == nid]
        baja_1 = len(df[df.pclass == 'BAJA+1'])
        baja_2 = len(df[df.pclass == 'BAJA+2'])
        cont   = len(df[df.pclass == 'CONTINUA'])
        g = get_gain(baja_1, baja_2, cont)        
        res.append(g) 
#        print 'Node = %.3d -> B1 = %.3d , B2 = %.3d , C = %.5d , gain = %.7d' % (
#                    nid, baja_1, baja_2, cont, g)

    print 'Train total gain : \t%d' % train_gain    
    print 'Test total gain : \t%d' % sum(res)
    print 'Norm test total gain : \t%d' % int(sum(res) / args.test_ratio)

    pdf['bin_class'] = pdf.apply(lambda x : 1 if x.get('pclass') == 'BAJA+2' else 0, axis=1)
    
    fpr, tpr, thresholds = roc_curve(list(pdf['bin_class']), predicted_proba[:,1])
    roc_auc = auc(fpr, tpr)
    print 'Area under the ROC curve : %f' % roc_auc

    plt.clf()
    plt.plot(fpr, tpr, label='ROC curve (area = %0.2f)' % roc_auc)
    plt.plot([0, 1], [0, 1], 'k--')
    plt.xlim([0.0, 1.0])
    plt.ylim([0.0, 1.0])
    plt.xlabel('False Positive Rate')
    plt.ylabel('True Positive Rate')
    plt.title('Receiver operating characteristic')
    plt.legend(loc="lower right")
    plt.savefig('roc.png')
    plt.close()

    if args.print_probs :
        print 'calculate B2 probs for dataset and dump to %s' % args.print_probs
        predicted_proba = clf.predict_proba(april_data)
        numpy.savetxt(args.print_probs, predicted_proba[:,1])
