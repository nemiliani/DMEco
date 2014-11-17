import pandas
import numpy
import sys
import re
import json
import argparse
import pickle

from sklearn import tree
from sklearn.metrics import roc_curve, auc
from sklearn.preprocessing import label_binarize
from sklearn.multiclass import OneVsRestClassifier
from sklearn.cross_validation import train_test_split
from sklearn.utils import array2d
from sklearn.ensemble import RandomForestClassifier
from sklearn.utils import shuffle

pandas.options.mode.chained_assignment = None

if __name__ == '__main__':

    parser = argparse.ArgumentParser(
            description='random forest tree evaluator.')
    parser.add_argument('-f', '--data_file', type=str, help='train data file')
    parser.add_argument('-c', '--criterion', type=str, choices=['gini','entropy'], default='gini',
                                help='split criterion')
    parser.add_argument('-m', '--max_depth', type=int, default=3, help='max depth for decision tree')
    parser.add_argument('-i', '--min_samples_split', type=int, default=3, help='min samples for split')
    parser.add_argument('-l', '--min_samples_leaf', type=int, default=1, help='min samples on a leaf')
    parser.add_argument('-u', '--dump_model', type=str, help='dump model to pickle file')
    parser.add_argument('-x', '--estimators', type=int, help='number of estimators')
    parser.add_argument('-j', '--jobs', type=int, help='number of jobs')
    

    args = parser.parse_args()
    # read the csv files
    april = pandas.read_csv(args.data_file, sep=',', low_memory=True, header=0)
    april = april.reindex(numpy.random.permutation(april.index))
    # create a df without the class column
    cols = [col for col in april.columns if col != 'clase']
    april_data = april[cols]

    clf = RandomForestClassifier(
                n_estimators=args.estimators,
                max_depth=args.max_depth,
                criterion=args.criterion,
                min_samples_split=args.min_samples_split,
                min_samples_leaf=args.min_samples_leaf,
                n_jobs=args.jobs)
    clf = clf.fit(april_data, april['clase'])

    if args.dump_model :
        print 'dumping model to %s' % args.dump_model
        pickle.dump(clf, open(args.dump_model, 'wb'))
