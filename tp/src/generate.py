import random

if __name__ == '__main__':

    cmd = 'python run_model_folds.py -f ../../data/data_and_custom_no_rem_tendency/data_and_custom_tendency.csv.clean.fold.0 ../../data/data_and_custom_no_rem_tendency/data_and_custom_tendency.csv.clean.fold.1 ../../data/data_and_custom_no_rem_tendency/data_and_custom_tendency.csv.clean.fold.2 -s %d -c entropy -m 6 -i %d -l %d -x 150 -j 10'
    for i in range(100, 3000, 150):
        for l in range(50, i, 50):
            print cmd % (random.randint(1,10000), i, l)
            
