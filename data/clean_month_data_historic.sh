#!/bin/bash

echo removing
python remove.py -f months/$1.txt -o months/$1.txt.removed -c \
    Master_Fvencimiento \
    Master_Finiciomora \
    Master_fultimo_cierre \
    Master_fechaalta \
    Visa_Fvencimiento \
    Visa_Finiciomora \
    Visa_fultimo_cierre \
    Visa_fechaalta 

echo 'joining historic'
python join_select.py -m months/$1.txt.removed -l \
    historic.bak/$1/$1_cautoservicio_transacciones  \
    historic.bak/$1/$1_ccajeros_ajenos_transacciones \
    historic.bak/$1/$1_ccajeros_propios_descuentos \
    historic.bak/$1/$1_ccajeros_propio_transacciones \
    historic.bak/$1/$1_ccallcenter_transacciones \
    historic.bak/$1/$1_ccambio_monedas_compra \
    historic.bak/$1/$1_ccambio_monedas_venta \
    historic.bak/$1/$1_ccheques_depositados \
    historic.bak/$1/$1_ccheques_depositados_rechazados \
    historic.bak/$1/$1_ccheques_emitidos \
    historic.bak/$1/$1_ccheques_emitidos_rechazados \
    historic.bak/$1/$1_ccomisiones_mantenimiento \
    historic.bak/$1/$1_ccomisiones_otras \
    historic.bak/$1/$1_ccuenta_descuentos \
    historic.bak/$1/$1_cextraccion_autoservicio \
    historic.bak/$1/$1_chomebanking_transacciones \
    historic.bak/$1/$1_cliente_sucursal \
    historic.bak/$1/$1_cliente_vip \
    historic.bak/$1/$1_cplan_sueldo_transaccion \
    historic.bak/$1/$1_cprestamos_hipotecarios \
    historic.bak/$1/$1_cprestamos_personales \
    historic.bak/$1/$1_cprestamos_prendarios \
    historic.bak/$1/$1_ctarjeta_debito_transacciones \
    historic.bak/$1/$1_ctarjeta_master_descuentos \
    historic.bak/$1/$1_ctarjeta_master_transacciones \
    historic.bak/$1/$1_ctarjeta_visa_descuentos \
    historic.bak/$1/$1_ctarjeta_visa_transacciones \
    historic.bak/$1/$1_ctransferencias_emitidas \
    historic.bak/$1/$1_ctransferencias_recibidas \
    historic.bak/$1/$1_mactivos_margen \
    historic.bak/$1/$1_marketing_activo_ultimos90dias \
    historic.bak/$1/$1_marketing_coss_selling \
    historic.bak/$1/$1_Master_cuenta_estado \
    historic.bak/$1/$1_Master_madelantodolares \
    historic.bak/$1/$1_Master_madelantopesos \
    historic.bak/$1/$1_Master_marca_atraso \
    historic.bak/$1/$1_Master_mconsumosdolares \
    historic.bak/$1/$1_Master_mconsumospesos \
    historic.bak/$1/$1_Master_mconsumototal \
    historic.bak/$1/$1_Master_mfinanciacion_limite \
    historic.bak/$1/$1_Master_mlimitecompra \
    historic.bak/$1/$1_Master_mpagado \
    historic.bak/$1/$1_Master_mpagominimo \
    historic.bak/$1/$1_Master_mpagosdolares \
    historic.bak/$1/$1_Master_mpagospesos \
    historic.bak/$1/$1_Master_msaldodolares \
    historic.bak/$1/$1_Master_msaldopesos \
    historic.bak/$1/$1_Master_msaldototal \
    historic.bak/$1/$1_Master_tadelantosefectivo \
    historic.bak/$1/$1_Master_tconsumos \
    historic.bak/$1/$1_mautoservicio \
    historic.bak/$1/$1_mbonos_gobierno \
    historic.bak/$1/$1_mcaja_ahorro_dolares \
    historic.bak/$1/$1_mcaja_ahorro_Nopaquete \
    historic.bak/$1/$1_mcaja_ahorro_Paquete \
    historic.bak/$1/$1_mcajeros_ajenos \
    historic.bak/$1/$1_mcajeros_propio \
    historic.bak/$1/$1_mcajeros_propios_descuentos \
    historic.bak/$1/$1_mcambio_monedas_compra \
    historic.bak/$1/$1_mcambio_monedas_venta \
    historic.bak/$1/$1_mcheques_depositados \
    historic.bak/$1/$1_mcheques_depositados_rechazados \
    historic.bak/$1/$1_mcheques_emitidos \
    historic.bak/$1/$1_mcheques_emitidos_rechazados \
    historic.bak/$1/$1_mcomisiones \
    historic.bak/$1/$1_mcomisiones_mantenimiento \
    historic.bak/$1/$1_mcomisiones_otras \
    historic.bak/$1/$1_mcuenta_corriente_dolares \
    historic.bak/$1/$1_mcuenta_corriente_Nopaquete \
    historic.bak/$1/$1_mcuenta_corriente_Paquete \
    historic.bak/$1/$1_mcuenta_debitos_automaticos \
    historic.bak/$1/$1_mcuenta_descuentos \
    historic.bak/$1/$1_mcuentas_saldo \
    historic.bak/$1/$1_mdescubierto_preacordado \
    historic.bak/$1/$1_mextraccion_autoservicio \
    historic.bak/$1/$1_mfondos_comunes_inversion_dolares \
    historic.bak/$1/$1_mfondos_comunes_inversion_pesos \
    historic.bak/$1/$1_minversiones_otras \
    historic.bak/$1/$1_mmonedas_extranjeras \
    historic.bak/$1/$1_mpagodeservicios \
    historic.bak/$1/$1_mpagomiscuentas \
    historic.bak/$1/$1_mpasivos_margen \
    historic.bak/$1/$1_mplan_sueldo \
    historic.bak/$1/$1_mplan_sueldo_manual \
    historic.bak/$1/$1_mplazo_fijo_dolares \
    historic.bak/$1/$1_mplazo_fijo_pesos \
    historic.bak/$1/$1_mprestamos_hipotecarios \
    historic.bak/$1/$1_mprestamos_personales \
    historic.bak/$1/$1_mprestamos_prendarios \
    historic.bak/$1/$1_mrentabilidad \
    historic.bak/$1/$1_mrentabilidad_annual \
    historic.bak/$1/$1_mtarjeta_master_consumo \
    historic.bak/$1/$1_mtarjeta_master_descuentos \
    historic.bak/$1/$1_mtarjeta_visa_consumo \
    historic.bak/$1/$1_mtarjeta_visa_descuentos \
    historic.bak/$1/$1_mtitulos \
    historic.bak/$1/$1_mtransferencias_emitidas \
    historic.bak/$1/$1_mtransferencias_recibidas \
    historic.bak/$1/$1_mttarjeta_master_debitos_automaticos \
    historic.bak/$1/$1_mttarjeta_visa_debitos_automaticos \
    historic.bak/$1/$1_participa \
    historic.bak/$1/$1_tautoservicio \
    historic.bak/$1/$1_tcaja_ahorro \
    historic.bak/$1/$1_tcajas \
    historic.bak/$1/$1_tcajas_consultas \
    historic.bak/$1/$1_tcajas_depositos \
    historic.bak/$1/$1_tcaja_seguridad \
    historic.bak/$1/$1_tcajas_extracciones \
    historic.bak/$1/$1_tcajas_otras \
    historic.bak/$1/$1_tcallcenter \
    historic.bak/$1/$1_tcambio_monedas \
    historic.bak/$1/$1_tcuenta_corriente \
    historic.bak/$1/$1_tcuenta_debitos_automaticos \
    historic.bak/$1/$1_tcuentas \
    historic.bak/$1/$1_tfondos_comunes_inversion \
    historic.bak/$1/$1_thomebanking \
    historic.bak/$1/$1_tmovimientos_ultimos90dias \
    historic.bak/$1/$1_tpagodeservicios \
    historic.bak/$1/$1_tpagomiscuentas \
    historic.bak/$1/$1_tpaquete1 \
    historic.bak/$1/$1_tpaquete2 \
    historic.bak/$1/$1_tpaquete3 \
    historic.bak/$1/$1_tpaquete4 \
    historic.bak/$1/$1_tpaquete5 \
    historic.bak/$1/$1_tpaquete6 \
    historic.bak/$1/$1_tpaquete7 \
    historic.bak/$1/$1_tpaquete8 \
    historic.bak/$1/$1_tpaquete9 \
    historic.bak/$1/$1_tplan_sueldo \
    historic.bak/$1/$1_tplazo_fijo \
    historic.bak/$1/$1_tseguro_accidentes_personales \
    historic.bak/$1/$1_tseguro_auto \
    historic.bak/$1/$1_tseguro_vida_mercado_abierto \
    historic.bak/$1/$1_tseguro_vivienda \
    historic.bak/$1/$1_ttarjeta_debito \
    historic.bak/$1/$1_ttarjeta_master \
    historic.bak/$1/$1_ttarjeta_master_debitos_automaticos \
    historic.bak/$1/$1_ttarjeta_visa \
    historic.bak/$1/$1_ttarjeta_visa_debitos_automaticos \
    historic.bak/$1/$1_ttitulos \
    historic.bak/$1/$1_Visa_cuenta_estado \
    historic.bak/$1/$1_Visa_madelantodolares \
    historic.bak/$1/$1_Visa_madelantopesos \
    historic.bak/$1/$1_Visa_marca_atraso \
    historic.bak/$1/$1_Visa_mconsumosdolares \
    historic.bak/$1/$1_Visa_mconsumospesos \
    historic.bak/$1/$1_Visa_mconsumototal \
    historic.bak/$1/$1_Visa_mfinanciacion_limite \
    historic.bak/$1/$1_Visa_mlimitecompra \
    historic.bak/$1/$1_Visa_mpagado \
    historic.bak/$1/$1_Visa_mpagominimo \
    historic.bak/$1/$1_Visa_mpagosdolares \
    historic.bak/$1/$1_Visa_mpagospesos \
    historic.bak/$1/$1_Visa_msaldodolares \
    historic.bak/$1/$1_Visa_msaldopesos \
    historic.bak/$1/$1_Visa_msaldototal \
    historic.bak/$1/$1_Visa_tadelantosefectivo \
    historic.bak/$1/$1_Visa_tconsumos \
 -c 0 1 2 3 4 > months/$1.txt.removed.historic


echo 'cleaning'
python clean.py -f months/$1.txt.removed.historic -o months/$1.txt.data_historic.clean
