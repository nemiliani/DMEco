#!/bin/bash

echo removing
python remove.py -f months/201404.txt -o data_nothing/data_nothing.csv.removed -c \
    Master_Fvencimiento \
    Master_Finiciomora \
    Master_fultimo_cierre \
    Master_fechaalta \
    Visa_Fvencimiento \
    Visa_Finiciomora \
    Visa_fultimo_cierre \
    Visa_fechaalta 

echo 'cleaning'
python clean.py -f data_nothing/data_nothing.csv.removed -o data_nothing/data_nothing.csv.clean
