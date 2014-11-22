import sys
import argparse

combinations = [
(250	,50),
(100	,50),
(1300	,150),
(550	,50),
(1150	,50),
(2800	,100),
(250	,150),
(250	,100),
(400	,250),
(1900	,200),
(250	,200),
(850	,100),
(550	,300),
(700	,100),
(1600	,100),
(400	,150),
(400	,200),
(1450	,150),
(550	,100),
(2650	,50),
(2500	,150),
(1600	,50),
(850	,200),
(1150	,300),
(1300	,50),
(2350	,50),
(1750	,100),
(1300	,250),
(2050	,50),
(2050	,100),
(400	,100),
(1750	,450),
(1000	,250),
(1000	,50),
(1750	,150),
(1000	,100),
(1150	,200),
(2050	,200),
(1150	,150),
(1450	,200),
(2200	,50),
(1750	,350),
(1000	,350),
(850	,150),
(1900	,150),
(2500	,250),
(1750	,50),
(1750	,200),
(550	,150),
(550	,250),
(1600	,150),
(2050	,250),
(1450	,100),
(1000	,200),
(700	,250),
(2500	,100),
(1300	,200),
(1600	,350),
(700	,150),
(700	,200),
(1000	,150),
(700	,50),
(2950	,100),
(1900	,100),
(2350	,350),
(2200	,200),
(1150	,100),
(1900	,50),
(1750	,300),
(2500	,200),
(400	,50),
(1600	,400),
(2200	,350),
(2800	,200),
(2950	,50),
(1450	,50),
(550    ,200),
(1900	,300),
(2050	,350)]

if __name__ == '__main__':
    parser = argparse.ArgumentParser(
            description='random forest tree evaluator.')
    parser.add_argument('-f', '--clean_file', type=str, nargs='+', help='train data file')
    parser.add_argument('-m', '--max_depth', type=int, default=3, help='max depth for decision tree')
    parser.add_argument('-j', '--jobs', type=int, help='number of jobs')
    args = parser.parse_args()

    print '#!/bin/bash'
    for p in combinations:
        print 'python ../../data/create_folds.py -f %s -k 3' % args.clean_file
        print 'python run_model_folds.py -f %s.fold.0 %s.fold.1 %s.fold.2 -s 6233 -c entropy -m %d -i %d -l %d -x 150 -j %d'
        
