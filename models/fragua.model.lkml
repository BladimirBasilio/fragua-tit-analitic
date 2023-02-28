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

explore: tb_ventas_plus {}
