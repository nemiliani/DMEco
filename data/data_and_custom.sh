#!/bin/bash
echo joining
python join_select.py -m months/201404.txt -l custom/201404/custom.csv -c 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 > data_and_custom/data_and_custom.csv

echo removing
python remove.py -f data_and_custom/data_and_custom.csv -o data_and_custom/data_and_custom.csv.removed -c \
    mcaja_ahorro_Nopaquete \
    mcaja_ahorro_Paquete \
    mcuenta_corriente_Nopaquete \
    mcuenta_corriente_Paquete \
    mtarjeta_visa_consumo \
    mtarjeta_master_consumo \
    mcuenta_debitos_automaticos \
    mttarjeta_visa_debitos_automaticos \
    mttarjeta_master_debitos_automaticos \
    mpagodeservicios \
    mpagomiscuentas \
    mcajeros_propios_descuentos \
    mtarjeta_visa_descuentos \
    mtarjeta_master_descuentos \
    mcuenta_descuentos \
    ccallcenter_transacciones \
    chomebanking_transacciones \
    cautoservicio_transacciones \
    ccajeros_propio_transacciones \
    ccajeros_ajenos_transacciones \
    mcajeros_propio \
    mcajeros_ajenos \
    Master_mfinanciacion_limite \
    Visa_mfinanciacion_limite \
    Master_msaldototal \
    Visa_msaldototal \
    Master_msaldopesos \
    Visa_msaldopesos \
    Master_msaldodolares \
    Visa_msaldodolares \
    Master_mconsumospesos \
    Visa_mconsumospesos \
    Master_mconsumosdolares \
    Visa_mconsumosdolares \
    Master_mlimitecompra \
    Visa_mlimitecompra \
    Master_madelantopesos \
    Visa_madelantopesos \
    Master_madelantodolares \
    Visa_madelantodolares \
    Master_mpagospesos \
    Visa_mpagospesos \
    Master_mpagosdolares \
    Visa_mpagosdolares \
    Master_mconsumototal \
    Visa_mconsumototal \
    mprestamos_personales \
    mprestamos_prendarios \
    mprestamos_hipotecarios \
    Master_mpagado \
    Visa_mpagado \
    Master_mpagominimo \
    Visa_mpagominimo

echo 'cleaning'
python clean.py -f data_and_custom/data_and_custom.csv.removed -o data_and_custom/data_and_custom.csv.removed.clean

echo 'folding'
python create_folds.py -f data_and_custom/data_and_custom.csv.removed.clean -k 3
