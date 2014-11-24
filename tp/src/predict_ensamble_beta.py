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
    parser.add_argument('-e', '--models', type=str, nargs='+', help='use models')
    
    args = parser.parse_args()
    # read the csv files
    april = pandas.read_csv(args.data_file, sep=',', low_memory=True, header=0)
    # create a df without the class column
    cols = [col for col in april.columns if col != 'clase']
    april_data = april[cols]
    
    i = 0
    df_train = pandas.DataFrame({'clase':list(april['clase'])})
    for m in args.models:
        clf = pickle.load(open(m,'rb'))    
        predicted_proba_train = clf.predict_proba(april_data)
        df_train['pb2_%d' % i] = predicted_proba_train[:,1]
        i += 1
    df_train['pb2'] = df_train.mean(axis=1, numeric_only=True)
    df_p2 = df_probs[df_probs.loc[:,'pb2'] > 0.02]
    for uid in list(df_p2['numero_de_cliente'])
        print uid
    
