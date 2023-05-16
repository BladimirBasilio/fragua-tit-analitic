view: mv1_inegi200_m {
  sql_table_name: `trendit-fragua-datalake.DS_FRAGUA_PLATA_V2.MV1_INEGI200M`
    ;;

  dimension: centroid_id {
    label: "Segmento"
    type: string
    sql: cast(${TABLE}.CENTROID_ID as string) ;;
  }

  dimension: dias_con_vta {
    type: number
    sql: ${TABLE}.dias_con_vta ;;
  }

  dimension: num_folios {
    type: number
    sql: ${TABLE}.num_folios ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  dimension: poblacion_014 {
    type: number
    sql: ${TABLE}.poblacion_014 ;;
  }

  dimension: poblacion_1529 {
    type: number
    sql: ${TABLE}.poblacion_1529 ;;
  }

  dimension: poblacion_3059 {
    type: number
    sql: ${TABLE}.poblacion_3059 ;;
  }

  dimension: poblacion_60ymas {
    type: number
    sql: ${TABLE}.poblacion_60ymas ;;
  }

  dimension: poblacion_cdiscap {
    type: number
    sql: ${TABLE}.poblacion_cdiscap ;;
  }

  dimension: poblacion_fem {
    type: number
    sql: ${TABLE}.poblacion_fem ;;
  }

  dimension: poblacion_mas {
    type: number
    sql: ${TABLE}.poblacion_mas ;;
  }

  dimension: poblacion_total {
    type: number
    sql: ${TABLE}.poblacion_total ;;
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

  dimension: promedio_escolaridad {
    type: number
    sql: ${TABLE}.promedio_escolaridad ;;
  }

  dimension: promedio_escolaridad_fem {
    type: number
    sql: ${TABLE}.promedio_escolaridad_fem ;;
  }

  dimension: promedio_escolaridad_mas {
    type: number
    sql: ${TABLE}.promedio_escolaridad_mas ;;
  }

  dimension: promedio_ocup_vivparthab {
    type: number
    sql: ${TABLE}.promedio_ocup_vivparthab ;;
  }

  dimension: promedio_ocupxcuarto_vivparthab {
    type: number
    sql: ${TABLE}.promedio_ocupxcuarto_vivparthab ;;
  }

  dimension: sucursal {
    type: string
    primary_key: yes
    sql: ${TABLE}.sucursal ;;
  }

  dimension: viviendas_part {
    type: number
    sql: ${TABLE}.viviendas_part ;;
  }

  dimension: viviendas_part_hab {
    type: number
    sql: ${TABLE}.viviendas_part_hab ;;
  }

  dimension: viviendas_part_hab_banio {
    type: number
    sql: ${TABLE}.viviendas_part_hab_banio ;;
  }

  dimension: viviendas_part_hab_dren {
    type: number
    sql: ${TABLE}.viviendas_part_hab_dren ;;
  }

  dimension: viviendas_part_hab_eelect {
    type: number
    sql: ${TABLE}.viviendas_part_hab_eelect ;;
  }

  dimension: viviendas_part_hab_pfirme {
    type: number
    sql: ${TABLE}.viviendas_part_hab_pfirme ;;
  }

  dimension: viviendas_part_nohab {
    type: number
    sql: ${TABLE}.viviendas_part_nohab ;;
  }

  dimension: viviendas_total {
    type: number
    sql: ${TABLE}.viviendas_total ;;
  }

  dimension: vivparthab_3mas_ocupxcuaro {
    type: number
    sql: ${TABLE}.vivparthab_3mas_ocupxcuaro ;;
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
  #MEDIDAS

  measure: numero_folios {
    type: sum
    sql: ${num_folios} ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: pob_total {
    type: sum
    sql: ${poblacion_total} ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: escolaridad_avg {
    type: average
    sql: ${promedio_escolaridad} ;;
  }

  measure: escolaridad_min {
    type: min
    sql: ${promedio_escolaridad} ;;
  }

  measure: escolaridad_q1 {
    type: percentile
    percentile: 25
    sql: ${promedio_escolaridad} ;;
  }

  measure: escolaridad_q2 {
    type: percentile
    percentile: 50
    sql: ${promedio_escolaridad} ;;
  }

  measure: escolaridad_q3 {
    type: percentile
    percentile: 75
    sql: ${promedio_escolaridad} ;;
  }

  measure: escolaridad_max {
    type: max
    sql: ${promedio_escolaridad} ;;
  }

  measure: folio_count_min {
    type: min
    sql: ${num_folios} ;;
  }

  measure: folio_count_q1 {
    type: percentile
    percentile: 25
    sql: ${num_folios} ;;
  }

  measure: folio_count_q2 {
    type: percentile
    percentile: 50
    sql: ${num_folios} ;;
  }

  measure: folio_count_q3 {
    type: percentile
    percentile: 75
    sql: ${num_folios} ;;
  }

  measure: folio_count_max {
    type: max
    sql: ${num_folios} ;;
  }

  measure: unidades_ticket {
    label: "Unidades promedio por ticket"
    type: average
    sql: ${vta_total}/${num_folios} ;;
  }

}
