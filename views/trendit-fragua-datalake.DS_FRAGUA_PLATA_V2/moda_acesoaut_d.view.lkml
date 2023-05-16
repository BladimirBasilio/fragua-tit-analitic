view: moda_acesoaut_d {
  sql_table_name: `trendit-fragua-datalake.DS_FRAGUA_PLATA_V2.MODA_ACESOAUT_D`
    ;;

  dimension: acesoaut_d {
    type: string
    sql: ${TABLE}.ACESOAUT_D ;;
  }

  dimension: count_acesoaut_d {
    type: number
    sql: ${TABLE}.COUNT_ACESOAUT_D ;;
  }

  dimension: sucursal {
    type: string
    sql: ${TABLE}.sucursal ;;
    primary_key: yes
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
