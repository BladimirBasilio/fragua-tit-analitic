view: agg_variacion {
  sql_table_name: `trendit-fragua-datalake.DS_FRAGUA_PLATA_V2.AGG_VARIACION`
    ;;

  dimension: anio {
    type: number
    sql: ${TABLE}.anio ;;
  }

  dimension: anio_mes {
    type: string
    sql: ${TABLE}.anio_mes ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }

  dimension: cantidad_mes_anterior {
    type: number
    sql: ${TABLE}.cantidad_mes_anterior ;;
  }

  dimension: entidad {
    type: string
    sql: CAST(${TABLE}.entidad AS STRING) ;;
  }

  dimension: folios_mes_anterior {
    type: number
    sql: ${TABLE}.folios_mes_anterior ;;
  }

  dimension: grupo {
    type: string
    sql: CAST(${TABLE}.grupo AS STRING) ;;
  }

  dimension: mes {
    type: number
    sql: ${TABLE}.mes ;;
  }

  dimension: municipio {
    type: string
    sql: CAST(${TABLE}.municipio as STRING) ;;
  }

  dimension: poblacion {
    type: string
    sql: CAST(${TABLE}.poblacion AS STRING) ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }

  dimension: sucursal {
    type: string
    sql: ${TABLE}.sucursal ;;
  }

  dimension: tot_folio {
    type: number
    sql: ${TABLE}.tot_folio ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: cantidad_sum {
    type: sum
    sql: ${cantidad} ;;
    value_format_name: decimal_0
  }

  measure: cant_ant_sum {
    type: sum
    sql: ${cantidad_mes_anterior};;
    value_format_name: decimal_0
  }

  measure: tot_folio_sum {
    type: sum
    sql: ${tot_folio} ;;
    value_format_name: decimal_0
  }

  measure: tot_folio_ant_sum {
    type: sum
    sql: ${folios_mes_anterior} ;;
    value_format_name: decimal_0
  }

  #variación

  measure: variacion_mes_anterior{
    type: number
    sql: ( ${cantidad_sum} - ${cant_ant_sum} )/ NULLIF(${cant_ant_sum},0) ;;
  }
}
