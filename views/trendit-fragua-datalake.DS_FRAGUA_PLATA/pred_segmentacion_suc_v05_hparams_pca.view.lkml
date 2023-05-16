view: pred_segmentacion_suc_v05_hparams_pca {
  sql_table_name: `trendit-fragua-datalake.DS_FRAGUA_PLATA.PRED_segmentacion_suc_V05_hparams_pca`
    ;;

  dimension: centroid_id {
    label: "Segmento"
    type: number
    sql: ${TABLE}.CENTROID_ID ;;
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


##MEDIDAS

  measure: total_ventas {
    type: sum
    sql: ${vta_total} ;;
  }

  measure: avg_ventas {
    type: average
    sql: ${vta_total} ;;
  }

}
