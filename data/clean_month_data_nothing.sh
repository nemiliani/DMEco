#!/bin/bash

python remove.py -f months/$1.txt -o months/$1.txt.removed -c \
    Master_Fvencimiento \
    Master_Finiciomora \
    Master_fultimo_cierre \
    Master_fechaalta \
    Visa_Fvencimiento \
    Visa_Finiciomora \
    Visa_fultimo_cierre \
    Visa_fechaalta 

python clean.py -f months/$1.txt.removed -o months/$1.txt.data_nothing.clean
