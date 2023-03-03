view: cat_ticket_hash {
  sql_table_name: `trendit-fragua-datalake.DS_FRAGUA_PLATA.CAT_TICKET_HASH`
    ;;

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

  dimension: hash_value {
    type: string
    sql: ${TABLE}.hash_value ;;
  }

  dimension: hora {
    type: string
    sql: ${TABLE}.hora ;;
  }

  dimension: sucursal {
    type: number
    sql: ${TABLE}.sucursal ;;
  }

  dimension: ticket {
    type: number
    sql: ${TABLE}.ticket ;;
  }

  dimension: calculada {
    type: string
    sql: CONCAT(hora,' CALCULADA') ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
