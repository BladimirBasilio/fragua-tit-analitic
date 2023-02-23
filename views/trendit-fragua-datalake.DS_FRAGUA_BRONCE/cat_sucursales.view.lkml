view: cat_sucursales {
  sql_table_name: `trendit-fragua-datalake.DS_FRAGUA_BRONCE.CAT_SUCURSALES`
    ;;

  dimension: abrevia2 {
    type: string
    sql: ${TABLE}.abrevia2 ;;
  }

  dimension: entidad {
    type: number
    sql: ${TABLE}.entidad ;;
  }

  dimension: latitud {
    type: number
    sql: ${TABLE}.latitud ;;
  }

  dimension: longitud {
    type: number
    sql: ${TABLE}.longitud ;;
  }

  dimension: municipio {
    type: number
    sql: ${TABLE}.municipio ;;
  }

  dimension: poblacion {
    type: number
    sql: ${TABLE}.poblacion ;;
  }

  dimension: snombre {
    type: string
    sql: ${TABLE}.snombre ;;
  }

  dimension: sucursal {
    type: number
    sql: ${TABLE}.sucursal ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
