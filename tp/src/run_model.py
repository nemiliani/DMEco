import pandas
import numpy
import sys
import re
import argparse
import matplotlib.pyplot as plt

from sklearn import tree
from sklearn.metrics import roc_curve, auc
from sklearn.preprocessing import label_binarize
from sklearn.multiclass import OneVsRestClassifier
from sklearn.cross_validation import train_test_split


pandas.options.mode.chained_assignment = None

MOST_MIN = -149849333.41
NAN_REPLACE = -99999999999999

def get_leafs(dot_filename):
    with open(dot_filename, 'r') as f:
        leafs = [line.strip() for line in f if line.find('value') != -1]
    res = []
    for l in leafs:
        p = re.compile('samples\s=\s[\d]+')
        begin, end = p.search(l).span()
        total = int(l[begin:end].split('=')[1].strip())
        p = re.compile('value\s+=\s+\[[\d\s\.]+\]')
        begin, end = p.search(l).span()
        vals = [int(i.strip('.')) for i in l[begin:end].strip('value = []').split()]
        assert(total == sum(vals))
        res.append(vals)
    return res

def get_leaf_gain(leaf):
    return (5000 * leaf['BAJA+2']) - (100 * (leaf['BAJA+1'] + leaf['BAJA+2'] + leaf['CONTINUA']))
    
if __name__ == '__main__':

    parser = argparse.ArgumentParser(
            description='decision tree evaluator.')
    parser.add_argument('-d', '--dot_file', type=str, default='tree.dot', help='output dot file')
    parser.add_argument('-f', '--data_file', type=str, help='train data file')
    parser.add_argument('-t', '--test_ratio', type=float, default=0.3, help='test set portion')
    parser.add_argument('-s', '--split_seed', type=int, default=0, help='seed for the shuffle function')
    parser.add_argument('-c', '--criterion', type=str, choices=['gini','entropy'], default='gini', help='split criterion')
    parser.add_argument('-m', '--max_depth', type=int, default=3, help='max depth for decision tree')
    parser.add_argument('-i', '--min_samples_split', type=int, default=3, help='min samples for split')
    parser.add_argument('-l', '--min_samples_leaf', type=int, default=1, help='min samples on a leaf')
    parser.add_argument('-p', '--splitter', type=str, choices=['best', 'random'], default='best', 
                                    help='startegy to choose the split at each node')    
    args = parser.parse_args()

    # read the csv files
    print 'reading data ...'
    april = pandas.read_csv(args.data_file, sep='\t', low_memory=False, header=0)
    # create a df without the class column
    cols = [col for col in april.columns if col != 'clase']
    april_data = april[cols]
    # transform s/n cols to 0/1 columns    
    # transform NAN in numeric columns to a known numeric value so that
    # the tree won't complain on cast time
    print 'working on data ...'    
    mins = []
    for c in cols: 
        if april_data[c].dtype == 'object':
            april_data[c] = april_data[c].apply(lambda x : 0 if x.upper() == 'N' else 1)
        elif april_data[c].dtype == 'float64':
            april_data[c] = april_data[c].fillna(NAN_REPLACE)
            mins.append(april_data[c].min())
    assert(NAN_REPLACE == min(mins))
    print 'training ... '
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
    print 'done!'
    tree.export_graphviz(clf, out_file=args.dot_file)
    leafs = get_leafs(args.dot_file)
    leaf_maps = [dict(zip(list(clf.classes_), list(leaf))) for leaf in leafs]
    gains = []
    for leaf in leaf_maps:
        gain = get_leaf_gain(leaf)
        gains.append(gain)
    print 'Total gain : %d' % sum([gain for gain in gains if gain > 0])    
    print 'Max   gain : %d' % max(gains)

#    y = label_binarize(april['clase'], classes=['BAJA+1', 'BAJA+2', 'CONTINUA'])
#    n_classes = y.shape[1]
#    
#    # shuffle and split training and test sets
#    X_train, X_test, y_train, y_test = train_test_split(april_data, april['clase'], test_size=.5, random_state=0)

#    # Learn to predict each class against the other
#    clf = OneVsRestClassifier(tree.DecisionTreeClassifier(max_depth=5))
#    y_score = clf.fit(X_train, y_train).decision_function(X_test)

#    # Compute ROC curve and ROC area for each class
#    fpr = dict()
#    tpr = dict()
#    roc_auc = dict()
#    for i in range(n_classes):
#        fpr[i], tpr[i], _ = roc_curve(april['clase'][:, i], y_score[:, i])
#        roc_auc[i] = auc(fpr[i], tpr[i])
