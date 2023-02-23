view: cat_productos {
  sql_table_name: `trendit-fragua-datalake.DS_FRAGUA_BRONCE.CAT_PRODUCTOS`
    ;;

  dimension: controlado {
    type: string
    sql: ${TABLE}.controlado ;;
  }

  dimension: grupo {
    type: number
    sql: ${TABLE}.grupo ;;
  }

  dimension: linea {
    type: number
    sql: ${TABLE}.linea ;;
  }

  dimension: pdescrip {
    type: string
    sql: ${TABLE}.pdescrip ;;
  }

  dimension: producto {
    type: number
    sql: ${TABLE}.producto ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
