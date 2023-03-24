view: pred_segmentacion_suc_v03_hparams {
  sql_table_name: `trendit-fragua-datalake.DS_FRAGUA_PLATA.PRED_segmentacion_suc_V05_hparams_pca`
    ;;

  dimension: segmento_sucursal {
    type: string
    sql: CAST(${TABLE}.CENTROID_ID AS STRING);;
    link: {
      label: "Análisis de Ventas"
      url: "https://trendit.cloud.looker.com/dashboards/75?Segmento+Sucursal={{ value }}&Segmento+Producto="
    }
  }

  dimension: segmento_sucursal_num {
    type: number
    sql: ${TABLE}.CENTROID_ID;;
  }

  dimension: dias_con_vta {
    type: number
    sql: ${TABLE}.dias_con_vta ;;
  }

  dimension: num_folios {
    type: number
    sql: ${TABLE}.num_folios ;;
  }

  dimension: por_vta_cont_no {
    type: number
    sql: ${TABLE}.por_vta_cont_No ;;
  }

  dimension: por_vta_cont_si {
    type: number
    sql: ${TABLE}.por_vta_cont_Si ;;
  }

  dimension: por_vta_granel_no {
    type: number
    sql: ${TABLE}.por_vta_granel_No ;;
  }

  dimension: por_vta_granel_si {
    type: number
    sql: ${TABLE}.por_vta_granel_Si ;;
  }

  dimension: prom_mes_max {
    type: number
    sql: ${TABLE}.prom_mes_max ;;
  }

  dimension: prom_mes_min {
    type: number
    sql: ${TABLE}.prom_mes_min ;;
  }

  dimension: sucursal {
    type: string
    sql: ${TABLE}.sucursal ;;
    primary_key: yes
  }

  dimension: trial_id {
    type: number
    sql: ${TABLE}.trial_id ;;
  }

  dimension: vta_dia_fin {
    type: number
    sql: ${TABLE}.vta_dia_fin ;;
  }

  dimension: vta_dia_lab {
    type: number
    sql: ${TABLE}.vta_dia_lab ;;
  }

  dimension: vta_invierno {
    type: number
    sql: ${TABLE}.vta_invierno ;;
  }

  dimension: vta_matutino {
    type: number
    sql: ${TABLE}.vta_matutino ;;
  }

  dimension: vta_nocturno {
    type: number
    sql: ${TABLE}.vta_nocturno ;;
  }

  dimension: vta_otonio {
    type: number
    sql: ${TABLE}.vta_otonio ;;
  }

  dimension: vta_primavera {
    type: number
    sql: ${TABLE}.vta_primavera ;;
  }

  dimension: vta_prom_dia {
    type: number
    sql: ${TABLE}.vta_prom_dia ;;
  }

  dimension: vta_total {
    type: number
    sql: ${TABLE}.vta_total ;;
  }

  dimension: vta_verano {
    type: number
    sql: ${TABLE}.vta_verano ;;
  }

  dimension: vta_vespertino {
    type: number
    sql: ${TABLE}.vta_vespertino ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
