#!/bin/bash

echo removing
python remove.py -f months/201404.txt -o data_no_master/data_no_master.csv.removed -c \
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
    

echo 'cleaning'
python clean.py -f data_no_master/data_no_master.csv.removed -o data_no_master/data_no_master.csv.removed.clean

