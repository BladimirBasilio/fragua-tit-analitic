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
    sql:${TABLE}.latitud ;;
  }

  dimension: longitud {
    type: number
    sql: ${TABLE}.longitud;;
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

  dimension: coordenadas{
    type: location
    sql_latitude: ${latitud} ;;
    sql_longitude: ${longitud} ;;
  }

  measure: suc_d {
    type: count_distinct
    sql: ${sucursal} ;;
  }

  measure: poblaciones_d {
    type: count_distinct
    sql: ${poblacion} ;;
  }

  measure: municipios_d {
    type: count_distinct
    sql: ${municipio} ;;
  }

  measure: entidades_d {
    type: count_distinct
    sql: ${entidad} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

}
