view: tb_ventas_plus {
  sql_table_name: `trendit-fragua-datalake.DS_FRAGUA_PLATA.VW_VENTAS_PLUS_FILT`
    ;;


  dimension: ID {
    type: string
    sql: concat( ${TABLE}.folio,${hora}) ;;
    primary_key: yes
  }

  dimension: abrevia2 {
    type: string
    sql: ${TABLE}.abrevia2 ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }

  dimension: controlado {
    type: string
    sql: ${TABLE}.controlado ;;
  }

  dimension: dia_semana {
    type: string
    sql: ${TABLE}.dia_semana ;;
  }

  dimension: entidad {
    type: number
    sql: ${TABLE}.entidad ;;
  }

  dimension: estacion {
    type: string
    sql: ${TABLE}.ESTACION ;;
  }

  dimension_group: fecha {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }

  dimension: folio {
    type: string
    sql: ${TABLE}.folio ;;
  }

  dimension: grupo {
    type: string
    sql: CAST(${TABLE}.grupo AS STRING) ;;
  }

  dimension: grupo_numero {
    type: number
    sql: ${TABLE}.grupo ;;
  }

  dimension: hora {
    type: string
    sql: ${TABLE}.hora ;;
  }

  dimension: latitud {
    type: number
    sql: ${TABLE}.latitud ;;
  }

  dimension: linea {
    type: number
    sql: ${TABLE}.linea ;;
  }

  dimension: longitud {
    type: number
    sql: ${TABLE}.longitud ;;
  }

  dimension: mes {
    type: string
    sql: ${TABLE}.MES ;;
  }

  dimension: municipio {
    type: string
    sql: CAST(${TABLE}.municipio AS STRING) ;;
  }

  dimension: pdescrip {
    type: string
    sql: ${TABLE}.pdescrip ;;
  }

  dimension: poblacion {
    type: number
    sql: ${TABLE}.poblacion ;;
  }

  dimension: prod_granel {
    type: string
    sql: ${TABLE}.prod_granel ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }

  dimension: snombre {
    type: string
    sql: ${TABLE}.snombre ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: sucursal {
    type: string
    sql: ${TABLE}.sucursal ;;
  }

  dimension: ticket {
    type: string
    sql: ${TABLE}.ticket ;;
  }

  dimension: turno {
    type: string
    sql: ${TABLE}.turno ;;
  }

  dimension: coordenadas{
    type: location
    sql_latitude: ${latitud} ;;
    sql_longitude: ${longitud} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_vendido {
    type: sum
    sql: ${cantidad} ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
    #drill_fields: [sucursal, venta_invierno, venta_primavera, venta_verano , venta_otonio]
  }

  measure: venta_turno {
    type: sum
    sql: ${cantidad} ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
    drill_fields: [sucursal, venta_matutino, venta_vespertino, venta_nocturno]
  }

  measure: venta_estacion {
    type: sum
    sql: ${cantidad} ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
    drill_fields: [sucursal, venta_invierno, venta_primavera, venta_verano , venta_otonio]
  }

  measure: sucursales_con_venta {
    type: count_distinct
    sql: ${sucursal} ;;
  }

  measure: productos_con_venta {
    type: count_distinct
    sql: ${producto} ;;
  }

  measure: promedio_cantidad {
    type: average
    sql: ${cantidad} ;;
  }

  measure: dias_distintos {
    label: "Dias con Venta"
    type: count_distinct
    sql: ${fecha_date} ;;
  }

  measure: promedio_venta_diario {
    type: number
    sql: ${total_vendido}/${dias_distintos} ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"

  }

  measure: folios_totales {
    type: count_distinct
    sql: ${folio} ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: pormedio_unidades_tickets{
    type: number
    sql: ${total_vendido}/${folios_totales} ;;
    value_format_name: decimal_2
  }

  measure: venta_matutino {
    type: sum
    sql: IF( ${turno} = 'MATUTINO', ${cantidad}, 0 ) ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: venta_vespertino {
    type: sum
    sql: IF( ${turno} = 'VESPERTINO', ${cantidad}, 0 ) ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: venta_nocturno {
    type: sum
    sql: IF( ${turno} = 'NOCTURNO', ${cantidad}, 0 ) ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: venta_verano {
    type: sum
    sql: IF( ${estacion} = 'VERANO', ${cantidad}, 0 ) ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"

  }

  measure: venta_invierno {
    type: sum
    sql: IF( ${estacion} = 'INVIERNO', ${cantidad}, 0 ) ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"

  }

  measure: venta_primavera {
    type: sum
    sql: IF( ${estacion} = 'PRIMAVERA', ${cantidad}, 0 ) ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"

  }

  measure: venta_otonio {
    label: "Venta Otoño"
    type: sum
    sql: IF( ${estacion} = 'OTOÑO', ${cantidad}, 0 ) ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"

  }

  measure: venta_promedio_sucursal {
    type: number
    sql: ${total_vendido}/${sucursales_con_venta} ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: venta_promedio_producto {
    type: number
    sql: ${total_vendido}/${productos_con_venta} ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: folios_por_sucursal {
    type: number
    sql: ${folios_totales}/${sucursales_con_venta} ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: folios_por_producto {
    type: number
    sql: ${folios_totales}/${productos_con_venta} ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: lineas_con_venta{
    type: count_distinct
    sql: ${linea}  ;;
  }

  measure: grupo_con_venta{
    type: count_distinct
    sql: ${grupo}  ;;
  }

  measure: productos_controlados_con_venta {
    type: count_distinct
    sql: IF( ${controlado} = 'S', ${producto}, null ) ;;
  }

  measure: productos_granel_con_venta {
    type: count_distinct
    sql: IF( ${prod_granel} = 'SI', ${producto}, null ) ;;
  }

  measure: promedio_folios {
    type: number
    sql: ${folios_totales}/${sucursales_con_venta} ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  #Medidas

  measure: cantidad_sum {
    type: sum
    sql: ${cantidad} ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: folio_count {
    type: count_distinct
    sql: ${folio} ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  #measure: folioavg_count_min {
  #  type: min
  #  sql: ${promedio_folios} ;;
  #}

  #measure: folioavg_count_q1 {
  #  type: percentile
  #  percentile: 25
  #  sql: ${promedio_folios} ;;
  #}

  #measure: folioavg_count_q2 {
  #  type: percentile
  #  percentile: 50
  #  sql: ${promedio_folios} ;;
  #}

  #measure: folioavg_count_q3 {
  #  type: percentile
  #  percentile: 75
  #  sql: ${promedio_folios} ;;
  #}

  #measure: folioavg_count_max {
  #  type: max
  #  sql: ${promedio_folios} ;;
  #}

  measure: productos_controlados_tot {
    type: sum
    sql: IF( ${controlado} = 'S', ${cantidad}, 0 ) ;;
  }

  measure: productos_no_controlados_tot {
    type: sum
    sql: IF( ${controlado} = 'N', ${cantidad}, 0 ) ;;
  }

  measure: productos_controlados_porc {
    label: "% Venta Productos Controlados"
    type: number
    value_format_name: percent_2
    sql: ${productos_controlados_tot}/(${productos_controlados_tot} + ${productos_no_controlados_tot});;
  }

  measure: productos_no_controlados_porc {
    label: "% Venta Productos No Controlados"
    type: number
    value_format_name: percent_2
    sql: ${productos_no_controlados_tot}/(${productos_controlados_tot} + ${productos_no_controlados_tot});;
  }
}
