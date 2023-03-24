view: pred_segmentacion_prod_v05_hparams_pca {
  sql_table_name: `trendit-fragua-datalake.DS_FRAGUA_PLATA.PRED_segmentacion_prod_V05_hparams_pca_9seg`
    ;;

  dimension: centroid_id {
    label: "Segmento Producto"
    type: string
    sql: CAST(${TABLE}.CENTROID_ID AS STRING) ;;
    link: {
      label: "Análisis de Ventas"
      url: "https://trendit.cloud.looker.com/dashboards/75?Segmento+Sucursal=&Segmento+Producto={{ value }}"
    }
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

  dimension: prod_control_no {
    type: number
    sql: ${TABLE}.prod_control_No ;;
  }

  dimension: prod_control_si {
    type: number
    sql: ${TABLE}.prod_control_Si ;;
  }

  dimension: prod_granel_no {
    type: number
    sql: ${TABLE}.prod_granel_No ;;
  }

  dimension: prod_granel_si {
    type: number
    sql: ${TABLE}.prod_granel_Si ;;
  }

  dimension: prod_grupo {
    type: number
    sql: ${TABLE}.prod_grupo ;;
  }

  dimension: prod_linea {
    type: number
    sql: ${TABLE}.prod_linea ;;
  }

  dimension: prod_status_a {
    type: number
    sql: ${TABLE}.prod_status_A ;;
  }

  dimension: prod_status_c {
    type: number
    sql: ${TABLE}.prod_status_C ;;
  }

  dimension: prod_status_d {
    type: number
    sql: ${TABLE}.prod_status_D ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }

  dimension: prom_mes_max {
    type: number
    sql: ${TABLE}.prom_mes_max ;;
  }

  dimension: prom_mes_min {
    type: number
    sql: ${TABLE}.prom_mes_min ;;
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
