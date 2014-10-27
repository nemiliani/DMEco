import pandas
import argparse
import os
import sys

USER_FIELD = 'numero_de_cliente'
DATE_FIELD = 'foto_mes'

MONTHS = [
    '201406',
    '201405',
    '201404',
    '201403',
    '201402',
    '201401',
    '201312',
    '201311',
    '201310',
    '201309',
    '201308',
    '201307',
    '201306',
    '201305',
    '201304',
    '201303',
    '201302',
    '201301',
    '201212',
    '201211',
    '201210',
    '201209',
    '201208',
    '201207',
    '201206',
    '201205',
    '201204',
]

HEADER = [
    'marketing_activo_ultimos90dias',
    'cliente_antiguedad',
    'mrentabilidad',
    'mrentabilidad_annual',
    'mcomisiones',
    'mactivos_margen',
    'mpasivos_margen',
    'marketing_coss_selling',
    'mcuenta_corriente_Nopaquete',
    'mcuenta_corriente_Paquete',
    'mcuenta_corriente_dolares',
    'mcaja_ahorro_Paquete',
    'mcaja_ahorro_Nopaquete',
    'mcaja_ahorro_dolares',
    'mdescubierto_preacordado',
    'mcuentas_saldo',
    'ctarjeta_debito_transacciones',
    'mautoservicio',
    'ctarjeta_visa_transacciones',
    'mtarjeta_visa_consumo',
    'ctarjeta_master_transacciones',
    'mtarjeta_master_consumo',
    'cprestamos_personales',
    'mprestamos_personales',
    'cprestamos_prendarios',
    'mprestamos_prendarios',
    'cprestamos_hipotecarios',
    'mprestamos_hipotecarios',
    'mplazo_fijo_dolares',
    'mplazo_fijo_pesos',
    'mfondos_comunes_inversion_pesos',
    'mfondos_comunes_inversion_dolares',
    'mtitulos',
    'mbonos_gobierno',
    'mmonedas_extranjeras',
    'minversiones_otras',
    'mplan_sueldo',
    'mplan_sueldo_manual',
    'cplan_sueldo_transaccion',
    'mcuenta_debitos_automaticos',
    'mttarjeta_visa_debitos_automaticos',
    'mttarjeta_master_debitos_automaticos',
    'mpagodeservicios',
    'mpagomiscuentas',
    'ccajeros_propios_descuentos',
    'mcajeros_propios_descuentos',
    'ctarjeta_visa_descuentos',
    'mtarjeta_visa_descuentos',
    'ctarjeta_master_descuentos',
    'mtarjeta_master_descuentos',
    'ccuenta_descuentos',
    'mcuenta_descuentos',
    'ccomisiones_mantenimiento',
    'mcomisiones_mantenimiento',
    'ccomisiones_otras',
    'mcomisiones_otras',
    'ccambio_monedas_compra',
    'mcambio_monedas_compra',
    'ccambio_monedas_venta',
    'mcambio_monedas_venta',
    'ctransferencias_recibidas',
    'mtransferencias_recibidas',
    'ctransferencias_emitidas',
    'mtransferencias_emitidas',
    'cextraccion_autoservicio',
    'mextraccion_autoservicio',
    'ccheques_depositados',
    'mcheques_depositados',
    'ccheques_emitidos',
    'mcheques_emitidos',
    'ccheques_depositados_rechazados',
    'mcheques_depositados_rechazados',
    'ccheques_emitidos_rechazados',
    'mcheques_emitidos_rechazados',
    'ccallcenter_transacciones',
    'chomebanking_transacciones',
    'cautoservicio_transacciones',
    'ccajeros_propio_transacciones',
    'mcajeros_propio',
    'ccajeros_ajenos_transacciones',
    'mcajeros_ajenos',
    'Master_marca_atraso',
    'Master_cuenta_estado',
    'Master_mfinanciacion_limite',
    'Master_Fvencimiento',
    'Master_Finiciomora',
    'Master_msaldototal',
    'Master_msaldopesos',
    'Master_msaldodolares',
    'Master_mconsumospesos',
    'Master_mconsumosdolares',
    'Master_mlimitecompra',
    'Master_madelantopesos',
    'Master_madelantodolares',
    'Master_fultimo_cierre',
    'Master_mpagado',
    'Master_mpagospesos',
    'Master_mpagosdolares',
    'Master_fechaalta',
    'Master_mconsumototal',
    'Master_mpagominimo',
    'Visa_marca_atraso',
    'Visa_cuenta_estado',
    'Visa_mfinanciacion_limite',
    'Visa_Fvencimiento',
    'Visa_Finiciomora',
    'Visa_msaldototal',
    'Visa_msaldopesos',
    'Visa_msaldodolares',
    'Visa_mconsumospesos',
    'Visa_mconsumosdolares',
    'Visa_mlimitecompra',
    'Visa_madelantopesos',
    'Visa_madelantodolares',
    'Visa_fultimo_cierre',
    'Visa_mpagado',
    'Visa_mpagospesos',
    'Visa_mpagosdolares',
    'Visa_fechaalta',
    'Visa_mconsumototal',
    'Visa_mpagominimo',
]

FILES = {}

def init_files(year_month, output_dir):
    for name in HEADER:
        FILES[name] = open(
            os.path.join(output_dir, '%s_%s' % (year_month, name)), 'w')
        prefix = '%s_%s' % (year_month, name)
        FILES[name].write('%s_min,%s_max,%s_mean\n' % (prefix, prefix, prefix))

def close_files():
    for k,v in FILES.iteritems():
        v.close()

if __name__ == '__main__':
    parser = argparse.ArgumentParser(
            description='create historic values')
    parser.add_argument('-f', '--month_file', type=str, help='input file')
    parser.add_argument('-u', '--user_files_path', type=str, help='user file')
    parser.add_argument('-o', '--output_dir', type=str, help='prefix for output files')
    args = parser.parse_args()

    mdf = pandas.read_csv(args.month_file, header=0)
    year  = int(args.month_file.split('.')[-2].split('/')[-1][:4])
    month = int(args.month_file.split('.')[-2].split('/')[-1][4:])
    year_month = '%s%.2d' % (year, month)

    init_files(year_month, args.output_dir)
    # get the previous six months
    idx = MONTHS.index(year_month)
    mlist = MONTHS[idx + 1 : idx + 7]
    mlist = [int(m) for m in mlist]
    # get the user list
    uids = list(mdf[USER_FIELD])
    for uid in uids:
        # get the user dataframe
        udf = pandas.read_csv(
                os.path.join(args.user_files_path, 'user_%d.txt' % int(uid)), 
                header=0)
        # keep only the valid months of the user
        udf = udf[udf.loc[:,'foto_mes'].isin(mlist)]
        udf = udf.replace(to_replace='NaN', value=0)
        udf = udf.replace(to_replace='Nan', value=0)
        udf = udf.replace(to_replace='nan', value=0)
        for name in HEADER:
            minv = udf[name].min()
            maxv = udf[name].max()
            mean = udf[name].mean()
            # get the file
            FILES[name].write('%.2f,%.2f,%.2f\n' % (minv,maxv,mean))
    close_files()


