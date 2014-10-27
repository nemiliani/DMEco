#!/bin/bash
echo 'sorting by user and date...'
sort -t, -k1,2 -rn --batch-size=100000 --parallel=6 producto_premium_2014.txt.csv > producto_premium_2014.txt.csv.sorted.user.date
echo 'creating user files'
python split_by_user.py
