view: agg_sucursal_kmeans_dinamico {
  sql_table_name: `trendit-fragua-datalake.DS_FRAGUA_PLATA_V2.AGG_SUCURSAL_KMEANS_DINAMICO`
    ;;

  dimension: anio_mes {
    type: string
    sql: ${TABLE}.anio_mes ;;
  }

  dimension: centroid_id {
    type: string
    sql: CAST(${TABLE}.CENTROID_ID AS STRING) ;;
  }

  dimension: num_folios {
    type: number
    sql: ${TABLE}.num_folios ;;
  }

  dimension: sucursal {
    type: string
    sql: ${TABLE}.sucursal ;;
  }

  dimension: vta_matutino {
    type: number
    sql: ${TABLE}.vta_matutino ;;
  }

  dimension: vta_nocturno {
    type: number
    sql: ${TABLE}.vta_nocturno ;;
  }

  dimension: vta_total {
    type: number
    sql: ${TABLE}.vta_total ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: tamanio_cluster {
    label: "Tamaño cluster"
    type: count_distinct
    sql: ${sucursal} ;;
  }

}
