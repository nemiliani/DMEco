import pandas
import argparse

if __name__ == '__main__':
    parser = argparse.ArgumentParser(
            description='checks vars')
    parser.add_argument('-f', '--file', type=str, help='month data file')
    args = parser.parse_args()
    
    month = pandas.read_csv(args.file, sep=',', low_memory=True, header=0)
    month = month[month.loc[:,'participa'] == 'S']
    month = month[month.numero_de_cliente != 2048]

    print 'column_name,mean,median,max,min'
    for col in month.columns:
        if col == 'clase':
            continue
        if month[col].dtype == 'object':
            month[col] = month[col].apply(lambda x : 0 if x.upper() == 'N' else 1)
        mean = month[col].mean(axis=1, skipna=True, numeric_only=True)
        median = month[col].median(axis=1, skipna=True, numeric_only=True)
        cmax = month[col].max(axis=1, skipna=True, numeric_only=True)
        cmin = month[col].min(axis=1, skipna=True, numeric_only=True)
        print('%s,%d,%d,%d,%d' % (col, mean, median, cmax, cmin))
