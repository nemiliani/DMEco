FILE = '../../data/months/201404.txt.extended'

if __name__ == '__main__':

    cmd = 'python run_model_beta.py -f %s -t 0.3 -s 489 -c entropy -m %d -i %d -l %d -x 500 -j 10 >> results.csv'
    for depth in range(3,10):
        for i in range(100, 3000, 150):
            for l in range(50, i, 50):
                print cmd % (FILE, depth, i, l)
            
