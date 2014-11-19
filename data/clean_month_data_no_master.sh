#!/bin/bash

echo removing
python remove.py -f months/$1.txt -o months/$1.txt.removed -c \
    Master_mfinanciacion_limite \
    Master_msaldototal \
    Master_msaldopesos \
    Master_msaldodolares \
    Master_mconsumospesos \
    Master_mconsumosdolares \
    Master_mlimitecompra \
    Master_madelantopesos \
    Master_madelantodolares \
    Master_mpagospesos \
    Master_mpagosdolares \
    Master_mconsumototal \
    Master_mpagado \
    Master_mpagominimo \
    Visa_Fvencimiento \
    Visa_Finiciomora \
    Visa_fultimo_cierre \
    Visa_fechaalta 
    

echo 'cleaning'
python clean.py -f months/$1.txt.removed -o months/$1.txt.data_no_master.clean

