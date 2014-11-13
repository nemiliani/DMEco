import pandas
import numpy
import sys
import re
import json
import argparse
import pickle
import itertools
import random

from sklearn import tree
from sklearn.metrics import roc_curve, auc
from sklearn.preprocessing import label_binarize
from sklearn.multiclass import OneVsRestClassifier
from sklearn.cross_validation import train_test_split
from sklearn.utils import array2d
from sklearn.ensemble import RandomForestClassifier
from sklearn.utils import shuffle
from sklearn import linear_model
from sklearn.preprocessing import scale
from sklearn import svm

pandas.options.mode.chained_assignment = None

MOST_MIN = -149849333.41
NAN_REPLACE = -99999999999999
    
def get_gain(baja_2, other):
    return (5000 * baja_2) - (100 * (baja_2 + other))


if __name__ == '__main__':

    parser = argparse.ArgumentParser(
            description='random forest tree evaluator.')
    parser.add_argument('-f', '--fold_files', type=str, nargs='+', help='train data file')
    parser.add_argument('-s', '--split_seed', type=int, default=0, help='seed for the shuffle function')
    parser.add_argument('-e', '--use_model', type=str, help='use pickled model instead of training')
    parser.add_argument('-c', '--penalty', type=float, help='Penalty parameter C of the error term')
    parser.add_argument('-z', '--cache_size', type=float, help='Cache size')
    args = parser.parse_args()

    random.seed(args.split_seed) 
    final_values = []
    for comb in itertools.combinations(args.fold_files, len(args.fold_files) - 1):        
        # read the csv files
        dfs = []
        for f in comb:
            data = pandas.read_csv(f, sep=',', low_memory=True, header=0)
            dfs.append(data)
        april = pandas.concat(dfs, ignore_index=True)

        test_file = None
        for f in args.fold_files:
            if f in comb:
                continue
            else :
                test_file = f
                break
        april_test = pandas.read_csv(test_file, sep=',', low_memory=True, header=0)
        # create a df without the class column
        cols = [col for col in april.columns if col != 'clase']
        april_data = april[cols]
        april_test_data = april_test[cols]
        # split the data set
        r = random.randint(1, 10000)
        X_train , y_train = shuffle(
            april_data, april['clase'], random_state=r)
        X_train = scale(X_train)
        r = random.randint(1, 10000)
        X_test , y_test = shuffle(
            april_test_data, april_test['clase'], random_state=r)
        X_test = scale(X_test)
        # scale data
        
        clf = None
        # check if we need to train the model or if we 
        # should load one
        if not args.use_model:
            clf = svm.SVC(
                C=args.penalty, 
                class_weight={'BAJA+2': 5},
                random_state=args.split_seed,
                cache_size=args.cache_size,
                probability=True)
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
#            print '---------------------'
#            print 'total regs pb2 > 0.02: %d' % len(df_tmp)
#            print 'pb2 count : %d' % pb2_count
#            print 'other count : %d' % (len(df_tmp) - pb2_count)
            return pb2_count, len(df_tmp) - pb2_count

        baja_2_count, other_count = get_class_counters(df_train)
        #print 'Train total gain : \t%d' % get_gain(baja_2_count, other_count)
        baja_2_count, other_count = get_class_counters(df_test)
        res = get_gain(baja_2_count, other_count)
        #print 'Test total gain : \t%d' % res
        #print 'Norm test total gain : \t%d' % (int(res) / args.test_ratio)
        final_values.append(res / (1 / float(len(args.fold_files))))
    print '%s,%d,%.2f,%d' % (
            str(args.fold_files),
            args.split_seed,
            args.penalty,
            int(numpy.mean(final_values)))

