view: tbl_ventas {
  sql_table_name: `trendit-fragua-datalake.DS_FRAGUA_BRONCE.TBL_VENTAS`
    ;;

  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
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

  dimension: hora {
    type: string
    sql: ${TABLE}.hora ;;
  }

  dimension: producto {
    type: number
    sql: ${TABLE}.producto ;;
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
