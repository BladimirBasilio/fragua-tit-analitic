connection: "FRAGUA"

include: "/views/**/*.view"

datagroup: fragua_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: fragua_default_datagroup

explore: cat_productos {
  join: cat_productos_granel_filt {
    type: left_outer
    relationship: one_to_one
    sql_on: ${cat_productos.producto} = ${cat_productos_granel_filt.producto} ;;
  }
}

explore: cat_sucursales {}

explore: tb_ventas_plus {
  join: pred_segmentacion_suc_v03_hparams {
    type: left_outer
    relationship: many_to_one
    sql_on: ${tb_ventas_plus.sucursal} = ${pred_segmentacion_suc_v03_hparams.sucursal} ;;
  }

  join: pred_segmentacion_prod_v03_hparams {
    type: left_outer
    relationship: many_to_one
    sql_on: ${tb_ventas_plus.producto} = ${pred_segmentacion_prod_v03_hparams.producto} ;;
  }
}

explore: cat_ticket_hash {}
