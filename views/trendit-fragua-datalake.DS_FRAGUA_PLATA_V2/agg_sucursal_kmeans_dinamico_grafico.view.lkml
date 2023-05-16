view: agg_sucursal_kmeans_dinamico_grafico {
  sql_table_name: `trendit-fragua-datalake.DS_FRAGUA_PLATA_V2.AGG_SUCURSAL_KMEANS_DINAMICO_GRAFICO`
    ;;

  dimension: _2022_04 {
    type: number
    sql: ${TABLE}._2022_04 ;;
  }

  dimension: _2022_05 {
    type: number
    sql: ${TABLE}._2022_05 ;;
  }

  dimension: _2022_06 {
    type: number
    sql: ${TABLE}._2022_06 ;;
  }

  dimension: _2022_07 {
    type: number
    sql: ${TABLE}._2022_07 ;;
  }

  dimension: _2022_08 {
    type: number
    sql: ${TABLE}._2022_08 ;;
  }

  dimension: _2022_09 {
    type: number
    sql: ${TABLE}._2022_09 ;;
  }

  dimension: sucursal {
    type: string
    sql: ${TABLE}.sucursal ;;
  }

  dimension: leyendas {
    type: string
    sql: "Leyendas";;
    label: " "
    html:
    <div style="text-align: center; min-height:3px;  display: inline-flex; justify-content: space-between">
      <b>2022-04</b>
      <b>2022-05</b>
      <b>2022-06</b>
      <b>2022-07</b>
      <b>2022-09</b>
    </div>
      ;;
  }

  dimension: abril_2022 {
    type: string
    sql: "2022-04";;
    label: " "
    html:
    <div style="text-align: center; min-height:3px;  display: inline-flex; justify-content: space-between">
      2022-04
    </div>
      ;;
  }

  dimension: mayo_2022 {
    type: string
    sql: "2022-05";;
    label: " "
    html:
    <div style="text-align: center; min-height:3px;  display: inline-flex; justify-content: space-between">
      2022-05
    </div>
      ;;
  }

  dimension: junio_2022 {
    type: string
    sql: "2022-06";;
    label: " "
    html:
    <div style="text-align: center; min-height:3px;  display: inline-flex; justify-content: space-between">
      2022-06
    </div>
      ;;
  }

  dimension: julio_2022 {
    type: string
    sql: "2022-07";;
    label: " "
    html:
    <div style="text-align: center; min-height:3px;  display: inline-flex; justify-content: space-between">
      2022-07
    </div>
      ;;
  }

  dimension: agosto_2022 {
    type: string
    sql: "2022-08";;
    label: " "
    html:
    <div style="text-align: center; min-height:3px;  display: inline-flex; justify-content: space-between">
      2022-08
    </div>
      ;;
  }

  dimension: septiembre_2022 {
    type: string
    sql: "2022-09";;
    label: " "
    html:
    <div style="text-align: center; min-height:3px;  display: inline-flex; justify-content: space-between">
      2022-09
    </div>
      ;;
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
