view: agg_ventas_filt {
  sql_table_name: `trendit-fragua-datalake.DS_FRAGUA_PLATA_V2.AGG_VENTAS_FILT`
    ;;

  dimension: abrevia2 {
    type: string
    sql: ${TABLE}.abrevia2 ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }

  dimension: controlado {
    type: string
    sql: ${TABLE}.controlado ;;
  }

  dimension: dia_semana {
    type: string
    sql: ${TABLE}.dia_semana ;;
  }

  dimension: entidad {
    type: number
    sql: ${TABLE}.entidad ;;
  }

  dimension: estacion {
    type: string
    sql: ${TABLE}.ESTACION ;;
  }

  dimension_group: fecha {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }

  dimension: folio {
    type: string
    sql: ${TABLE}.folio ;;
  }

  dimension: grupo {
    type: number
    sql: ${TABLE}.grupo ;;
  }

  dimension: hora {
    type: string
    sql: ${TABLE}.hora ;;
  }

  dimension: latitud {
    type: number
    sql: ${TABLE}.latitud ;;
  }

  dimension: linea {
    type: number
    sql: ${TABLE}.linea ;;
  }

  dimension: longitud {
    type: number
    sql: ${TABLE}.longitud ;;
  }

  dimension: mes {
    type: string
    sql: ${TABLE}.MES ;;
  }

  dimension: municipio {
    type: string
    sql: CAST(${TABLE}.municipio AS STRING) ;;
  }

  dimension: pdescrip {
    type: string
    sql: ${TABLE}.pdescrip ;;
  }

  dimension: poblacion {
    type: number
    sql: ${TABLE}.poblacion ;;
  }

  dimension: prod_granel {
    type: string
    sql: ${TABLE}.prod_granel ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }

  dimension: punto_geografico {
    type: string
    sql: ${TABLE}.punto_geografico ;;
  }

  dimension: snombre {
    type: string
    sql: ${TABLE}.snombre ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: sucursal {
    type: string
    sql: ${TABLE}.sucursal ;;
  }

  dimension: ticket {
    type: string
    sql: ${TABLE}.ticket ;;
  }

  dimension: turno {
    type: string
    sql: ${TABLE}.turno ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  #Medidas

  measure: cantidad_sum {
    type: sum
    sql: ${cantidad} ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
  }

  measure: folio_count {
    type: count_distinct
    sql: ${folio} ;;
    value_format: "[>=1000000]#,##0.00,,\" M\";[>=1000]#,##0.00,\" K\";#,##0.00"
    }

  #measure: folio_count_min {
  #  type: min
  #  sql: ${folio_count} ;;
  #}

  #measure: folio_count_q1 {
  #  type: percentile
  #  percentile: 25
  #  sql: ${folio_count} ;;
  #}

  #measure: folio_count_q2 {
    #type: percentile
    #percentile: 50
    #sql: ${folio_count} ;;
  #}

  #measure: folio_countt_q3 {
    #type: percentile
    #percentile: 75
    #sql: ${folio_count} ;;
  #}

  #measure: folio_count_max {
    #type: max
   # sql: ${folio_count} ;;
  #}
}
