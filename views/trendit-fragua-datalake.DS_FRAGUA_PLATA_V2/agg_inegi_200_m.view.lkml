view: agg_inegi_200_m {
  sql_table_name: `trendit-fragua-datalake.DS_FRAGUA_PLATA_V2.AGG_INEGI_200M`
    ;;

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

  measure: count {
    type: count
    drill_fields: []
  }

  dimension: poblacion_tier {
    type: tier
    tiers: [0,500, 1000, 1500, 2000, 2500, 3000, 3500, 4000, 4500, 5000, 5500]
    style: integer
    sql: ${poblacion_total} ;;
  }


  measure: CD_tier {
    case: {
      when: {
        sql: ${porcentaje_CD} <= 0.05;;
        label: "5%"
      }
      when: {
        sql: ${porcentaje_CD} > 0.05 AND ${porcentaje_CD} <= 0.10;;
        label: "10%"
      }
      when: {
        sql: ${porcentaje_CD} > 0.10 AND ${porcentaje_CD} <= 0.15;;
        label: "15%"
      }
      when: {
        sql: ${porcentaje_CD} > 0.15 AND ${porcentaje_CD} <= 0.20;;
        label: "20%"
      }
      when: {
        sql: ${porcentaje_CD} > 0.20;;
        label: "mayor a 20%"
      }
      else:"Unknown"
    }
  }



#MEDIDAS

#### MEDIDAS

  measure: suc_distinct {
    type: count_distinct
    sql: ${sucursal} ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: pobtot_sum {
    label: "Población total"
    type: sum
    sql: ${poblacion_total} ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: pobtot_avg {
    label: "Población promedio"
    type: average
    sql: ${poblacion_total};;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: pobfem_sum {
    label: "Población Femenina"
    type: sum
    sql: ${poblacion_fem};;
  }

  measure: pobfem_avg {
    type: average
    sql: ${poblacion_fem};;
  }

  measure: pobmas_sum {
    label: "Población Masculina"
    type: sum
    sql: ${poblacion_mas};;
  }

  measure: pobmas_avg {
    type: average
    sql: ${poblacion_mas};;
  }

  measure: pob014_sum {
    label: "0-14"
    type: sum
    sql: ${poblacion_014};;
  }

  measure: pob014_avg {
    type: average
    sql: ${poblacion_014};;
  }

  measure: pob1529_sum {
    label: "15-29"
    type: sum
    sql: ${poblacion_1529};;
  }

  measure: pob1529_avg {
    type: average
    sql: ${poblacion_1529};;
  }

  measure: pob3059_sum {
    label: "30-59"
    type: sum
    sql: ${poblacion_3059};;
  }

  measure: pob3059_avg {
    type: average
    sql: ${poblacion_3059};;
  }

  measure: pob60mas_sum {
    label: "60+"
    type: sum
    sql: ${poblacion_60ymas};;
  }

  measure: pob60mas_avg {
    type: average
    sql: ${poblacion_60ymas};;
  }

  measure: pobCD_sum {
    type: sum
    sql: ${poblacion_cdiscap};;
  }

  measure: pobCD_avg {
    type: average
    sql: ${poblacion_cdiscap};;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: escolaridad_avg {
    type: average
    sql: ${promedio_escolaridad};;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: escolaridadfem_avg {
    type: average
    sql: ${promedio_escolaridad_fem};;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: escolaridadmas_avg {
    type: average
    sql: ${promedio_escolaridad_mas};;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: viviendastot_sum {
    type: sum
    sql: ${viviendas_total};;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: viviendastot_avg {
    type: average
    sql: ${viviendas_total};;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: viviendas_part_sum {
    type: sum
    sql: ${viviendas_part};;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: viviendaspart_avg {
    type: average
    sql: ${viviendas_part};;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: viviendas_part_hab_sum {
    type: sum
    sql: ${viviendas_part_hab};;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: viviendaspart_hab_avg {
    type: average
    sql: ${viviendas_part_hab};;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: viviendas_part_nohab_sum {
    type: sum
    sql: ${viviendas_part_nohab};;
  }

  measure: promedio_ocup_vivparthab_avg {
    type: average
    sql: ${promedio_ocup_vivparthab};;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: promedio_ocupxcuarto_vivparthab_avg {
    type: average
    sql: ${promedio_ocupxcuarto_vivparthab};;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: vivparthab_3mas_ocupxcuaro_sum {
    type: sum
    sql: ${vivparthab_3mas_ocupxcuaro};;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: viviendas_part_hab_pfirme_sum {
    type: sum
    sql: ${viviendas_part_hab_pfirme};;
  }

  measure: viviendas_part_hab_eelect_sum {
    type: sum
    sql: ${viviendas_part_hab_eelect};;
  }

  measure: viviendas_part_hab_banio_sum {
    type: sum
    sql: ${viviendas_part_hab_banio};;
  }

  measure: viviendas_part_hab_dren_sum {
    type: sum
    sql: ${viviendas_part_hab_dren};;
  }

  measure: porcentaje_fem {
    type: number
    sql: ${pobfem_sum}/${pobtot_sum};;
    value_format: "0.00%"
  }

  measure: porcentaje_mas {
    type: number
    sql: ${pobmas_sum}/${pobtot_sum};;
    value_format: "0.00%"
  }

  measure: porcentaje_014 {
    type: number
    sql: ${pob014_sum}/${pobtot_sum};;
    value_format: "0.00%"
  }

  measure: porcentaje_1529 {
    type: number
    sql: ${pob1529_sum}/${pobtot_sum};;
    value_format: "0.00%"
  }

  measure: porcentaje_3059 {
    type: number
    sql: ${pob3059_sum}/${pobtot_sum};;
    value_format: "0.00%"
  }

  measure: porcentaje_60mas {
    type: number
    sql: ${pob60mas_sum}/${pobtot_sum};;
    value_format: "0.00%"
  }

  measure: porcentaje_CD {
    type: number
    sql: ${pobCD_sum}/${pobtot_sum};;
    value_format: "0.00%"
  }

  measure: porcentaje_viviendaspart_hab {
    type: number
    sql: ${viviendas_part_hab_sum}/${viviendas_part_sum};;
    value_format: "0.00%"
  }

  measure: porcentaje_vivparthab_3mas_ocupxcuaro {
    type: number
    sql: ${vivparthab_3mas_ocupxcuaro_sum}/${viviendas_part_hab_sum};;
    value_format: "0.00%"
  }

  measure: porcentaje_viviendas_part_hab_pfirme {
    type: number
    sql: ${viviendas_part_hab_pfirme_sum}/${viviendas_part_hab_sum};;
    value_format: "0.00%"
  }

  measure: porcentaje_viviendas_part_hab_eelect{
    type: number
    sql: ${viviendas_part_hab_eelect_sum}/${viviendas_part_hab_sum};;
    value_format: "0.00%"
  }

  measure: porcentaje_viviendas_part_hab_banio {
    type: number
    sql: ${viviendas_part_hab_banio_sum}/${viviendas_part_hab_sum};;
    value_format: "0.00%"
  }

  measure: porcentaje_viviendas_part_hab_dren {
    type: number
    sql: ${viviendas_part_hab_dren_sum}/${viviendas_part_hab_sum};;
    value_format: "0.00%"
  }

  measure: suc_arribaprom_pob{
    type: number
    sql: IF( ${pobtot_sum} > ${pobtot_avg}, ${suc_distinct}, 0 ) ;;
  }

}
