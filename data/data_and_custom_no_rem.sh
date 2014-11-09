#!/bin/bash
echo 'joining'
python join_select.py -m months/201404.txt -l custom/201404/custom.csv -c 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 > data_and_custom_no_rem/data_and_custom.csv

echo 'cleaning'
python clean.py -f data_and_custom_no_rem/data_and_custom.csv -o data_and_custom_no_rem/data_and_custom.csv.clean

echo 'folding'
python create_folds.py -f data_and_custom_no_rem/data_and_custom.csv.clean -k 3
