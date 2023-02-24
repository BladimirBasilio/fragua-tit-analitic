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

  dimension: producto_string {
    type: string
    sql: CAST( ${TABLE}.producto AS STRING ) ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: lineas_d {
    type: count_distinct
    sql: ${linea} ;;
  }

  measure: grupos_d {
    type: count_distinct
    sql: ${grupo} ;;
  }

  measure: estatus_d {
    type: count_distinct
    sql: ${status} ;;
  }

  measure: productos_d {
    label: "Total Productos"
    type: count_distinct
    sql: ${producto} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
