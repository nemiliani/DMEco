import pandas
import argparse
import numpy
from os.path import join

if __name__ == '__main__':

    parser = argparse.ArgumentParser(
            description='remove columns from csv')
    parser.add_argument('-f', '--file', type=str, help='csv file')
    parser.add_argument('-k', '--folds', type=int, help='folds')
    args = parser.parse_args()
    
    df = pandas.read_csv(args.file, header=0)
    df_cont = df[df.loc[:, 'clase'] == 'CONTINUA']
    df_b1   = df[df.loc[:, 'clase'] == 'BAJA+1']
    df_b2   = df[df.loc[:, 'clase'] == 'BAJA+2']
    
    df_cont = df_cont.reindex(numpy.random.permutation(df_cont.index))
    df_b1   = df_b1.reindex(numpy.random.permutation(df_b1.index))
    df_b2   = df_b2.reindex(numpy.random.permutation(df_b2.index))

    def fold_up(data_frame):
        total = len(data_frame)
        split = total / args.folds
        folds = []
        for k in range(0, args.folds):
            if k == (args.folds - 1):
                df_fold = data_frame[k * split :]
            else:
                df_fold = data_frame[k * split : (k + 1) * split]
            folds.append(df_fold)
        return folds
    
    df_cont_folds = fold_up(df_cont)
    df_b1_folds = fold_up(df_b1)
    df_b2_folds = fold_up(df_b2)

    for i in range(0, args.folds):
        df_union_fold = pandas.concat(
            [df_cont_folds[i], df_b1_folds[i], df_b2_folds[i]], ignore_index=True)
        df_union_fold.to_csv('%s.fold.%d' % (args.file, i), index=False) 
