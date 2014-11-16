import pandas
import argparse

NAN_REPLACE = -99999999999999

if __name__ == '__main__':

    parser = argparse.ArgumentParser(
            description='remove columns from csv')
    parser.add_argument('-f', '--file', type=str, help='csv file')
    parser.add_argument('-o', '--output_file', type=str, help='output csv file')
    args = parser.parse_args()
    
    df = pandas.read_csv(args.file, header=0)
    # keep participa = 1
    df = df[df.loc[:,'participa'] == 'S']
    df = df[df.numero_de_cliente != 2048]

    mins = []
    for c in df.columns: 
        if df[c].dtype == 'object' and c != 'clase':
            df[c] = df[c].apply(lambda x : 0 if x.upper() == 'N' else 1)
        elif df[c].dtype == 'float64':
            df[c] = df[c].fillna(NAN_REPLACE)
            mins.append(df[c].min())

    assert(NAN_REPLACE == min(mins))
    df.to_csv(args.output_file, index=False) 
