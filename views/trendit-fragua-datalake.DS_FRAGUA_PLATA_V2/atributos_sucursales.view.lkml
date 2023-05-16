view: atributos_sucursales {
  sql_table_name: `trendit-fragua-datalake.DS_FRAGUA_PLATA_V2.ATRIBUTOS_SUCURSALES`
    ;;

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
    primary_key: yes
    sql: ${TABLE}.sucursal ;;
  }

  dimension: vta_dia_fin {
    type: number
    sql: ${TABLE}.vta_dia_fin ;;
  }

  dimension: vta_dia_fin_porc {
    type: number
    sql: ${TABLE}.vta_dia_fin_porc ;;
  }

  dimension: vta_dia_lab {
    type: number
    sql: ${TABLE}.vta_dia_lab ;;
  }

  dimension: vta_dia_lab_porc {
    type: number
    sql: ${TABLE}.vta_dia_lab_porc ;;
  }

  dimension: vta_invierno {
    type: number
    sql: ${TABLE}.vta_invierno ;;
  }

  dimension: vta_invierno_avg {
    type: number
    sql: ${TABLE}.vta_invierno_avg ;;
  }

  dimension: vta_matutino {
    type: number
    sql: ${TABLE}.vta_matutino ;;
  }

  dimension: vta_matutino_porc {
    type: number
    sql: ${TABLE}.vta_matutino_porc ;;
  }

  dimension: vta_nocturno {
    type: number
    sql: ${TABLE}.vta_nocturno ;;
  }

  dimension: vta_nocturno_porc {
    type: number
    sql: ${TABLE}.vta_nocturno_porc ;;
  }

  dimension: vta_otonio {
    type: number
    sql: ${TABLE}.vta_otonio ;;
  }

  dimension: vta_otonio_avg {
    type: number
    sql: ${TABLE}.vta_otonio_avg ;;
  }

  dimension: vta_primavera {
    type: number
    sql: ${TABLE}.vta_primavera ;;
  }

  dimension: vta_primavera_avg {
    type: number
    sql: ${TABLE}.vta_primavera_avg ;;
  }

  dimension: vta_prom_dia {
    type: number
    sql: ${TABLE}.vta_prom_dia ;;
  }

  dimension: vta_prom_fin {
    type: number
    sql: ${TABLE}.vta_prom_fin ;;
  }

  dimension: vta_prom_fin_porc {
    type: number
    sql: ${TABLE}.vta_prom_fin_porc ;;
  }

  dimension: vta_prom_lab {
    type: number
    sql: ${TABLE}.vta_prom_lab ;;
  }

  dimension: vta_prom_lab_porc {
    type: number
    sql: ${TABLE}.vta_prom_lab_porc ;;
  }

  dimension: vta_total {
    type: number
    sql: ${TABLE}.vta_total ;;
  }

  dimension: vta_verano {
    type: number
    sql: ${TABLE}.vta_verano ;;
  }

  dimension: vta_verano_avg {
    type: number
    sql: ${TABLE}.vta_verano_avg ;;
  }

  dimension: vta_vespertino {
    type: number
    sql: ${TABLE}.vta_vespertino ;;
  }

  dimension: vta_vespertino_porc {
    type: number
    sql: ${TABLE}.vta_vespertino_porc ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
