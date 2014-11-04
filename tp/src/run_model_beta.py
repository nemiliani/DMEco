import pandas
import numpy
import sys
import re
import json
import argparse
import matplotlib.pyplot as plt
import pickle

from sklearn import tree
from sklearn.metrics import roc_curve, auc
from sklearn.preprocessing import label_binarize
from sklearn.multiclass import OneVsRestClassifier
from sklearn.cross_validation import train_test_split
from sklearn.utils import array2d
from sklearn.ensemble import RandomForestClassifier

pandas.options.mode.chained_assignment = None

MOST_MIN = -149849333.41
NAN_REPLACE = -99999999999999
    
def get_gain(baja_2, other):
    return (5000 * baja_2) - (100 * (baja_2 + other))

def args_to_json(args):
    p = {}
    p['test_ratio'] = args.test_ratio
    p['split_seed'] = args.split_seed
    p['criterion'] = args.criterion
    p['max_depth'] = args.max_depth
    p['min_samples_split'] = args.min_samples_split
    p['min_samples_leaf'] = args.min_samples_leaf
    p['add_columns'] = args.add_columns
    p['dump_model'] = args.dump_model
    p['use_model'] = args.use_model
    return json.dumps(p)

if __name__ == '__main__':

    parser = argparse.ArgumentParser(
            description='random forest tree evaluator.')
    parser.add_argument('-d', '--dot_file', type=str, default='tree.dot', help='output dot file')
    parser.add_argument('-f', '--data_file', type=str, help='train data file')
    parser.add_argument('-t', '--test_ratio', type=float, default=0.3, help='test set portion')
    parser.add_argument('-s', '--split_seed', type=int, default=0, help='seed for the shuffle function')
    parser.add_argument('-c', '--criterion', type=str, choices=['gini','entropy'], default='gini',
                                help='split criterion')
    parser.add_argument('-m', '--max_depth', type=int, default=3, help='max depth for decision tree')
    parser.add_argument('-i', '--min_samples_split', type=int, default=3, help='min samples for split')
    parser.add_argument('-l', '--min_samples_leaf', type=int, default=1, help='min samples on a leaf')
    parser.add_argument('-r', '--print_probs', type=str, help='print prob b2 to csv file')
    parser.add_argument('-n', '--print_success', type=str, help='print success to csv file')    
    parser.add_argument('-a', '--add_columns', type=str, nargs='+', help='adds colls from csv file')
    parser.add_argument('-u', '--dump_model', type=str, help='dump model to pickle file')
    parser.add_argument('-e', '--use_model', type=str, help='use pickled model instead of training')
    parser.add_argument('-x', '--estimators', type=int, help='number of estimators')
    parser.add_argument('-j', '--jobs', type=int, help='number of jobs')
    

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
    # add columns to dataset
    if args.add_columns:
        for col in args.add_columns:
            print 'adding column form file %s' % col
            april_data[col.split('.')[0]] = numpy.genfromtxt(col, delimiter=',')
    assert(NAN_REPLACE == min(mins))
    #print 'training ... '
    # split the data set
    X_train, X_test, y_train, y_test = train_test_split(
                april_data, april['clase'], 
                test_size=args.test_ratio, 
                random_state=args.split_seed)
    clf = None
    # check if we need to train the model or if we 
    # should load one
    if not args.use_model:
        clf = RandomForestClassifier(
                n_estimators=args.estimators,
                max_depth=args.max_depth,
                criterion=args.criterion,
                min_samples_split=args.min_samples_split,
                min_samples_leaf=args.min_samples_leaf,
                n_jobs=args.jobs)
    else :
        clf = pickle.load(open(args.use_model,'rb'))
    clf = clf.fit(X_train, y_train)

    predicted_proba_train = clf.predict_proba(X_train)
    df_train = pandas.DataFrame({
            'pb1'   : predicted_proba_train[:,0],
            'pb2'   : predicted_proba_train[:,1],
            'pcont' : predicted_proba_train[:,2],
            'the_class' : y_train,
    })

    predicted_proba_test = clf.predict_proba(X_test)
    df_test = pandas.DataFrame({
            'pb1' :predicted_proba_test[:,0],
            'pb2' :predicted_proba_test[:,1],
            'pcont':predicted_proba_test[:,2],
            'the_class' : y_test,
    })

    def get_class_counters(df_probs):
        df_tmp = df_probs[df_probs.loc[:,'pb2'] > 0.02]
        pb2_count = len(df_tmp[df_tmp.the_class == 'BAJA+2'])
        return pb2_count, len(df_tmp) - pb2_count

    baja_2_count, other_count = get_class_counters(df_train)
    print 'Train total gain : \t%d' % get_gain(baja_2_count, other_count)
    baja_2_count, other_count = get_class_counters(df_test)
    res = get_gain(baja_2_count, other_count)
    print 'Test total gain : \t%d' % res
    print 'Norm test total gain : \t%d' % (int(res) / args.test_ratio)

    df_test['binclass'] = df_test.apply(lambda x : 1 if x.get('the_class') == 'BAJA+2' else 0, axis=1)
    fpr, tpr, thresholds = roc_curve(list(df_test['binclass']), predicted_proba_test[:,1])
    roc_auc = auc(fpr, tpr)
    print 'Area under the ROC curve : %f' % roc_auc

    predicted_proba = clf.predict_proba(april_data)
    if args.print_probs:
        print 'calculate B2 probs for dataset and dump to %s' % args.print_probs        
        numpy.savetxt(args.print_probs, predicted_proba[:,1])

    if args.print_success:
        print 'calculate success column for dataset and dump to %s' % args.print_success
        def success(x):
            if x.get('pb2') > 0.02 and x.get('clase') == 'BAJA+2':
                # good prediction
                return 1
            elif x.get('pb2') > 0.02 and x.get('clase') != 'BAJA+2':
                # bad prediction
                return 0
            elif x.get('pb2') < 0.02 and x.get('clase') != 'BAJA+2':
                # good prediction
                return 1
            elif x.get('pb2') < 0.02 and x.get('clase') == 'BAJA+2':
                # bad prediction
                return 0
        april['pb2'] = predicted_proba[:,1]
        april['success'] = april.apply(success, axis=1)
        numpy.savetxt(args.print_success, april.as_matrix(columns=['success',]))

    if args.dump_model :
        print 'dumping model to %s' % args.dump_model
        pickle.dump(clf, open(args.dump_model, 'wb'))
