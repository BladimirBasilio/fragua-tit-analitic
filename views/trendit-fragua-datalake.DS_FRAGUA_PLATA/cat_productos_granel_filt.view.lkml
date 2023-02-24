view: cat_productos_granel_filt {
  sql_table_name: `trendit-fragua-datalake.DS_FRAGUA_PLATA.CAT_PRODUCTOS_GRANEL_FILT`
    ;;

  dimension: prod_granel {
    label: "Venta a Granel"
    type: string
    sql: ${TABLE}.prod_granel ;;
  }

  dimension: producto {
    type: number
    sql: ${TABLE}.producto ;;
  }



  measure: count {
    type: count
    drill_fields: []
  }
}
