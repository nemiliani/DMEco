#!/bin/bash

echo removing
python remove.py -f months/$1 -o data_nothing/data_nothing.csv.$2.removed -c \
    Master_Fvencimiento \
    Master_Finiciomora \
    Master_fultimo_cierre \
    Master_fechaalta \
    Visa_Fvencimiento \
    Visa_Finiciomora \
    Visa_fultimo_cierre \
    Visa_fechaalta 

echo 'cleaning'
python clean.py -f data_nothing/data_nothing.csv.$2.removed -o data_nothing/data_nothing.csv.$2.clean
