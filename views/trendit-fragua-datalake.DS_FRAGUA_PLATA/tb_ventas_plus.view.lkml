view: tb_ventas_plus {
  sql_table_name: `trendit-fragua-datalake.DS_FRAGUA_PLATA.VW_VENTAS_PLUS_FILT`
    ;;

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
    type: number
    sql: ${TABLE}.municipio ;;
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
    drill_fields: [snombre, venta_invierno, venta_primavera, venta_verano , venta_otonio]
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

  measure: venta_verano {
    type: sum
    sql: IF( ${estacion} = 'VERANO', ${cantidad}, 0 ) ;;
  }

  measure: venta_invierno {
    type: sum
    sql: IF( ${estacion} = 'INVIERNO', ${cantidad}, 0 ) ;;
  }

  measure: venta_primavera {
    type: sum
    sql: IF( ${estacion} = 'PRIMAVERA', ${cantidad}, 0 ) ;;
  }

  measure: venta_otonio {
    label: "Venta Otoño"
    type: sum
    sql: IF( ${estacion} = 'OTONIO', ${cantidad}, 0 ) ;;
  }

  measure: venta_promedio_sucursal {
    type: number
    sql: ${total_vendido}/${sucursales_con_venta} ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

}
