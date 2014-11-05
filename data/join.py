import sys
import argparse
from os import listdir
from os.path import isfile, join

if __name__ == '__main__':

    parser = argparse.ArgumentParser(
            description='decision tree evaluator.')
    parser.add_argument('-m', '--month_file', type=str, help='month file')
    parser.add_argument('-d', '--historic_data_dir', type=str, help='historic data directory')
    args = parser.parse_args()

    file_names = [f for f in listdir(args.historic_data_dir) if isfile(f)]
    open_files = []    
    for f in file_names:
        open_files.append(open(f, 'r'))

    with open(args.month_file, 'r') as f:
        for line in f:
            parts = []
            for hf in open_files:
                parts.append(hf.readline())
            parts = ','.join(parts)
            line = '%s,%s' % (line, parts)
            print line

    for hf in open_files:
        hf.close()
            
        
