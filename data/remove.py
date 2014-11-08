import pandas
import argparse

if __name__ == '__main__':

    parser = argparse.ArgumentParser(
            description='remove columns from csv')
    parser.add_argument('-f', '--file', type=str, help='csv file')
    parser.add_argument('-o', '--output_file', type=str, help='output csv file')
    parser.add_argument('-c', '--column_list', type=str, 
                    nargs='+', help='list of columns to be removed')
    args = parser.parse_args()
    
    df = pandas.read_csv(args.file, header=0)
    keep = [c for c in df.columns if not c in args.column_list]
    df[keep].to_csv(args.output_file, index=False)
    
