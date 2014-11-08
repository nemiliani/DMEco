import sys
import argparse
from os import listdir
from os.path import isfile, join

if __name__ == '__main__':

    parser = argparse.ArgumentParser(
            description='decision tree evaluator.')
    parser.add_argument('-m', '--month_file', type=str, help='month file')
    parser.add_argument('-l', '--file_list', type=str, nargs='+', help='list of files')
    parser.add_argument('-c', '--column_index_list', type=int, nargs='+', help='list of columns')
    args = parser.parse_args()

    open_files = []    
    for f in args.file_list:
        open_files.append(open(f, 'r'))

    with open(args.month_file, 'r') as f:
        for line in f:
            parts = []
            for hf in open_files:
                fields = hf.readline().strip()
                fields = fields.split(',')
                parts.extend([fields[i] for i in args.column_index_list])
            parts = ','.join(parts)
            line = '%s,%s' % (line.strip(), parts)
            print line

    for hf in open_files:
        hf.close()
            
        
