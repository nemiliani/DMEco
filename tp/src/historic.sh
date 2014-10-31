#!/bin/bash
mkdir ../../data/historic/201404
mkdir ../../data/historic/201403
mkdir ../../data/historic/201402
mkdir ../../data/historic/201401
mkdir ../../data/historic/201312
mkdir ../../data/historic/201311
nohup python create_historic.py -f ../../data/months/201404.txt -u ../../data/user/ -o ../../data/historic/201404 &
nohup python create_historic.py -f ../../data/months/201403.txt -u ../../data/user/ -o ../../data/historic/201403 &
nohup python create_historic.py -f ../../data/months/201402.txt -u ../../data/user/ -o ../../data/historic/201402 &
nohup python create_historic.py -f ../../data/months/201401.txt -u ../../data/user/ -o ../../data/historic/201401 &
nohup python create_historic.py -f ../../data/months/201312.txt -u ../../data/user/ -o ../../data/historic/201312 &
nohup python create_historic.py -f ../../data/months/201311.txt -u ../../data/user/ -o ../../data/historic/201311 &
