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

  join: pred_segmentacion_prod_v05_hparams_pca {
    type: left_outer
    relationship: many_to_one
    sql_on: ${tb_ventas_plus.producto} = ${pred_segmentacion_prod_v05_hparams_pca.producto} ;;
  }
}

explore: cat_ticket_hash {}

explore: agg_ventas_filt {
  label: "analisis_sucursales_V2"
  join: atributos_sucursales {
    type: left_outer
    relationship: many_to_one
    sql_on: ${atributos_sucursales.sucursal} = ${agg_ventas_filt.sucursal} ;;
  }

  join: mv1_inegi200_m {
    type: left_outer
    relationship: many_to_one
    sql_on: ${agg_ventas_filt.sucursal} = ${mv1_inegi200_m.sucursal} ;;
  }

  }

explore: pred_segmentacion_suc_v05_hparams_pca {
  label: "seg suc V05 con INEGI"
  join: agg_k4_manzana {
    type: left_outer
    relationship: many_to_one
    sql_on: ${pred_segmentacion_suc_v05_hparams_pca.sucursal} = ${agg_k4_manzana.sucursal} ;;
  }

  join: tb_ventas_plus {
    type: left_outer
    relationship: many_to_one
    sql_on: ${pred_segmentacion_suc_v05_hparams_pca.sucursal} = ${tb_ventas_plus.sucursal} ;;
  }

  join: agg_inegi_200_m {
    type: left_outer
    relationship: many_to_one
    sql_on: ${pred_segmentacion_suc_v05_hparams_pca.sucursal} = ${agg_inegi_200_m.sucursal} ;;
  }

  join: mv1_inegi200_m {
    type: left_outer
    relationship: many_to_one
    sql_on: ${pred_segmentacion_suc_v05_hparams_pca.sucursal} = ${mv1_inegi200_m.sucursal} ;;
  }

  join: moda_acesoaut_d {
    type: left_outer
    relationship: many_to_one
    sql_on: ${pred_segmentacion_suc_v05_hparams_pca.sucursal} = ${moda_acesoaut_d.sucursal} ;;
  }

}

  explore: agg_variacion{
    label: "analisis_sucursales_V3"
    join: atributos_sucursales {
      type: left_outer
      relationship: many_to_one
      sql_on: ${atributos_sucursales.sucursal} = ${agg_variacion.sucursal} ;;
    }}

explore:  agg_sucursal_kmeans_dinamico_grafico {
      label: "Segmentación dinámica grafico"
}

#borrar
explore:  agg_sucursal_kmeans_dinamico {
  #label: "Segmentación dinámica"
}
