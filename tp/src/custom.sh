#!/bin/bash
mkdir -p ../../data/custom/201404
mkdir -p ../../data/custom/201403
mkdir -p ../../data/custom/201402
mkdir -p ../../data/custom/201401
mkdir -p ../../data/custom/201312
mkdir -p ../../data/custom/201311
python create_custom.py -f ../../data/months/201404.txt -o ../../data/custom/201404/
python create_custom.py -f ../../data/months/201403.txt -o ../../data/custom/201403/
python create_custom.py -f ../../data/months/201402.txt -o ../../data/custom/201402/
python create_custom.py -f ../../data/months/201401.txt -o ../../data/custom/201401/
python create_custom.py -f ../../data/months/201312.txt -o ../../data/custom/201312/
python create_custom.py -f ../../data/months/201311.txt -o ../../data/custom/201311/
