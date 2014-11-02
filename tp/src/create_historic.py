import pandas
import argparse
import os
import sys
import numpy as np

USER_FIELD = 'numero_de_cliente'
DATE_FIELD = 'foto_mes'
NAN_REPLACE = -99999999999999

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
 'cliente_vip',
 'cliente_sucursal',
 'mrentabilidad',
 'mrentabilidad_annual',
 'mcomisiones',
 'mactivos_margen',
 'mpasivos_margen',
 'marketing_coss_selling',
 'tpaquete1',
 'tpaquete2',
 'tpaquete3',
 'tpaquete4',
 'tpaquete5',
 'tpaquete6',
 'tpaquete7',
 'tpaquete8',
 'tpaquete9',
 'tcuentas',
 'tcuenta_corriente',
 'mcuenta_corriente_Nopaquete',
 'mcuenta_corriente_Paquete',
 'mcuenta_corriente_dolares',
 'tcaja_ahorro',
 'mcaja_ahorro_Paquete',
 'mcaja_ahorro_Nopaquete',
 'mcaja_ahorro_dolares',
 'mdescubierto_preacordado',
 'mcuentas_saldo',
 'ttarjeta_debito',
 'ctarjeta_debito_transacciones',
 'mautoservicio',
 'ttarjeta_visa',
 'ctarjeta_visa_transacciones',
 'mtarjeta_visa_consumo',
 'ttarjeta_master',
 'ctarjeta_master_transacciones',
 'mtarjeta_master_consumo',
 'cprestamos_personales',
 'mprestamos_personales',
 'cprestamos_prendarios',
 'mprestamos_prendarios',
 'cprestamos_hipotecarios',
 'mprestamos_hipotecarios',
 'tplazo_fijo',
 'mplazo_fijo_dolares',
 'mplazo_fijo_pesos',
 'tfondos_comunes_inversion',
 'mfondos_comunes_inversion_pesos',
 'mfondos_comunes_inversion_dolares',
 'ttitulos',
 'mtitulos',
 'tseguro_vida_mercado_abierto',
 'tseguro_auto',
 'tseguro_vivienda',
 'tseguro_accidentes_personales',
 'tcaja_seguridad',
 'mbonos_gobierno',
 'mmonedas_extranjeras',
 'minversiones_otras',
 'tplan_sueldo',
 'mplan_sueldo',
 'mplan_sueldo_manual',
 'cplan_sueldo_transaccion',
 'tcuenta_debitos_automaticos',
 'mcuenta_debitos_automaticos',
 'ttarjeta_visa_debitos_automaticos',
 'mttarjeta_visa_debitos_automaticos',
 'ttarjeta_master_debitos_automaticos',
 'mttarjeta_master_debitos_automaticos',
 'tpagodeservicios',
 'mpagodeservicios',
 'tpagomiscuentas',
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
 'tcambio_monedas',
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
 'tcallcenter',
 'ccallcenter_transacciones',
 'thomebanking',
 'chomebanking_transacciones',
 'tautoservicio',
 'cautoservicio_transacciones',
 'tcajas',
 'tcajas_consultas',
 'tcajas_depositos',
 'tcajas_extracciones',
 'tcajas_otras',
 'ccajeros_propio_transacciones',
 'mcajeros_propio',
 'ccajeros_ajenos_transacciones',
 'mcajeros_ajenos',
 'tmovimientos_ultimos90dias',
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
 'Master_tconsumos',
 'Master_tadelantosefectivo',
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
 'Visa_tconsumos',
 'Visa_tadelantosefectivo',
 'Visa_mpagominimo',
 'participa']

FILES = {}

def init_files(year_month, output_dir):
    for name in HEADER:
        FILES[name] = open(
            os.path.join(output_dir, '%s_%s' % (year_month, name)), 'w')
        prefix = '%s_%s' % (year_month, name)
        FILES[name].write('%s_min,%s_max,%s_mean,%s_hist\n' % (prefix, prefix, prefix, prefix))

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
        udf = udf.replace(to_replace='S', value=1)
        udf = udf.replace(to_replace='N', value=0)
        for name in HEADER:
            vals = [e for e in list(udf[name]) if e != 'NaN' and e != 'Nan' and e != 'nan']
            if not len(vals):
                vals = [NAN_REPLACE, ]
            minv = np.min(vals)
            maxv = np.max(vals)
            mean = np.mean(vals)
            if len(vals) > 1:
                first_half = vals[:len(vals)/2]
                second_half = vals[len(vals)/2:]
                avg = np.mean(second_half) - np.mean(first_half)
            else:
                avg = 0
            # get the file
            FILES[name].write('%.2f,%.2f,%.2f,%.2f\n' % (minv,maxv,mean,avg))
    close_files()


