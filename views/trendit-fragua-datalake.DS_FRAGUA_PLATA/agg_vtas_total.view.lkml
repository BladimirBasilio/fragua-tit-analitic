view: agg_vtas_total {
  sql_table_name: `trendit-fragua-datalake.DS_FRAGUA_PLATA.AGG_VTAS_TOTAL`
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

  dimension: entidad {
    type: number
    sql: ${TABLE}.entidad ;;
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

  dimension: producto {
    type: number
    sql: ${TABLE}.producto ;;
  }

  dimension: producto_ventas {
    type: number
    sql: ${TABLE}.producto_ventas ;;
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
    type: number
    sql: ${TABLE}.sucursal ;;
  }

  dimension: ticket {
    type: number
    sql: ${TABLE}.ticket ;;
  }

  dimension: tienda {
    type: number
    sql: ${TABLE}.tienda ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
