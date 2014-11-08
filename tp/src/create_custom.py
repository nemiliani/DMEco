import pandas
import argparse
import os
import sys
import numpy as np

USER_FIELD = 'numero_de_cliente'
DATE_FIELD = 'foto_mes'
NAN_REPLACE = -99999999999999

CUSTOM_SUMS = {
    'sum_mcaja_ahorro' : ['mcaja_ahorro_Nopaquete', 'mcaja_ahorro_Paquete'],
    'sum_mcuenta_corriente' : ['mcuenta_corriente_Nopaquete', 'mcuenta_corriente_Paquete'],
    'sum_tarjeta_consumo' : ['mtarjeta_visa_consumo', 'mtarjeta_master_consumo'],
    'sum_debitos_auto' :  ['mcuenta_debitos_automaticos', 'mttarjeta_visa_debitos_automaticos', 'mttarjeta_master_debitos_automaticos'],
    'sum_pago_servicios' : ['mpagodeservicios','mpagomiscuentas'],
    'sum_descuentos' : ['mcajeros_propios_descuentos', 'mtarjeta_visa_descuentos', 'mtarjeta_master_descuentos', 'mcuenta_descuentos'],
    'sum_ctransacciones' : ['ccallcenter_transacciones', 'chomebanking_transacciones', 'cautoservicio_transacciones','ccajeros_propio_transacciones', 'ccajeros_ajenos_transacciones'],
    'sum_mcajeros': ['mcajeros_propio', 'mcajeros_ajenos'],
    'sum_mfinanciacion_limite': ['Master_mfinanciacion_limite', 'Visa_mfinanciacion_limite'],
    'sum_msaldototal': ['Master_msaldototal', 'Visa_msaldototal'],
    'sum_msaldopesos': ['Master_msaldopesos', 'Visa_msaldopesos'],
    'sum_msaldodolares': ['Master_msaldodolares', 'Visa_msaldodolares'],
    'sum_mconsumospesos': ['Master_mconsumospesos', 'Visa_mconsumospesos'],
    'sum_mconsumosdolares': ['Master_mconsumosdolares','Visa_mconsumosdolares'],
    'sum_mlimitecompra': ['Master_mlimitecompra','Visa_mlimitecompra'],
    'sum_madelantopesos': ['Master_madelantopesos','Visa_madelantopesos'],
    'sum_madelantodolares': ['Master_madelantodolares', 'Visa_madelantodolares'],
    'sum_mpagospesos': ['Master_mpagospesos', 'Visa_mpagospesos'],
    'sum_mpagosdolares': ['Master_mpagosdolares', 'Visa_mpagosdolares'],
    'sum_mconsumototal': ['Master_mconsumototal','Visa_mconsumototal'],
    'sum_mprestamos': ['mprestamos_personales','mprestamos_prendarios','mprestamos_hipotecarios']
}

CUSTOM_DIFS = {
    'dif_mpagominimo' : (['Master_mpagado','Visa_mpagado'], ['Master_mpagominimo', 'Visa_mpagominimo'])
}

def sum_up(cols, record):
    values = []
    for c in cols:
        val = record.get(c)
        if val != 'NaN' and val != 'Nan' and val != 'nan':
            values.append(val)
        else:
            print 'uh'
            values.append(0)
    return np.sum(values)

def diff_up(cols, record):
    return sum_up(cols[0], record) - sum_up(cols[1], record)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(
            description='create historic values')
    parser.add_argument('-f', '--month_file', type=str, help='input file')
    parser.add_argument('-o', '--output_dir', type=str, help='prefix for output files')
    args = parser.parse_args()

    mdf = pandas.read_csv(args.month_file, header=0)
    for k,v in CUSTOM_SUMS.iteritems():
        mdf[k] = mdf.apply(lambda x : sum_up(v,x), axis=1)
    for k,v in CUSTOM_DIFS.iteritems():
        mdf[k] = mdf.apply(lambda x : diff_up(v,x), axis=1)
    fields = CUSTOM_SUMS.keys()
    fields.extend(CUSTOM_DIFS.keys())
    mdf[fields].to_csv(os.path.join(args.output_dir, 'custom.csv'), na_rep='0', index=False)

