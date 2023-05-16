view: tbl_inegi_xmanzana {
  sql_table_name: `trendit-fragua-datalake.DS_FRAGUA_PLATA.TBL_INEGI_XMANZANA`
    ;;

  dimension: acesoaut_c {
    type: string
    sql: ${TABLE}.ACESOAUT_C ;;
  }

  dimension: acesoaut_d {
    type: string
    sql: ${TABLE}.ACESOAUT_D ;;
  }

  dimension: acesoper_c {
    type: string
    sql: ${TABLE}.ACESOPER_C ;;
  }

  dimension: acesoper_d {
    type: string
    sql: ${TABLE}.ACESOPER_D ;;
  }

  dimension: alumpub_c {
    type: string
    sql: ${TABLE}.ALUMPUB_C ;;
  }

  dimension: alumpub_d {
    type: string
    sql: ${TABLE}.ALUMPUB_D ;;
  }

  dimension: ambito {
    type: string
    sql: ${TABLE}.AMBITO ;;
  }

  dimension: arboles_c {
    type: string
    sql: ${TABLE}.ARBOLES_C ;;
  }

  dimension: arboles_d {
    type: string
    sql: ${TABLE}.ARBOLES_D ;;
  }

  dimension: banqueta_c {
    type: string
    sql: ${TABLE}.BANQUETA_C ;;
  }

  dimension: banqueta_d {
    type: string
    sql: ${TABLE}.BANQUETA_D ;;
  }

  dimension: ciclocar_c {
    type: string
    sql: ${TABLE}.CICLOCAR_C ;;
  }

  dimension: ciclocar_d {
    type: string
    sql: ${TABLE}.CICLOCAR_D ;;
  }

  dimension: ciclovia_c {
    type: string
    sql: ${TABLE}.CICLOVIA_C ;;
  }

  dimension: ciclovia_d {
    type: string
    sql: ${TABLE}.CICLOVIA_D ;;
  }

  dimension: cve_ageb {
    type: string
    sql: ${TABLE}.CVE_AGEB ;;
  }

  dimension: cve_ent {
    type: string
    sql: ${TABLE}.CVE_ENT ;;
  }

  dimension: cve_loc {
    type: string
    sql: ${TABLE}.CVE_LOC ;;
  }

  dimension: cve_mun {
    type: string
    sql: ${TABLE}.CVE_MUN ;;
  }

  dimension: cve_mza {
    type: string
    sql: ${TABLE}.CVE_MZA ;;
  }

  dimension: cvegeo {
    type: string
    sql: ${TABLE}.CVEGEO ;;
  }

  dimension: drenajep_c {
    type: string
    sql: ${TABLE}.DRENAJEP_C ;;
  }

  dimension: drenajep_d {
    type: string
    sql: ${TABLE}.DRENAJEP_D ;;
  }

  dimension: entidad {
    type: string
    sql: ${TABLE}.entidad ;;
  }

  dimension: estabici_c {
    type: string
    sql: ${TABLE}.ESTABICI_C ;;
  }

  dimension: estabici_d {
    type: string
    sql: ${TABLE}.ESTABICI_D ;;
  }

  dimension: fecha_ceu {
    type: number
    sql: ${TABLE}.FECHA_CEU ;;
  }

  dimension: fecha_inf {
    type: number
    sql: ${TABLE}.FECHA_INF ;;
  }

  dimension: fecha_poli {
    type: number
    sql: ${TABLE}.FECHA_POLI ;;
  }

  dimension: graproes {
    type: number
    sql: ${TABLE}.GRAPROES ;;
  }

  dimension: graproes_f {
    type: number
    sql: ${TABLE}.GRAPROES_F ;;
  }

  dimension: graproes_m {
    type: number
    sql: ${TABLE}.GRAPROES_M ;;
  }

  dimension: guarnici_c {
    type: string
    sql: ${TABLE}.GUARNICI_C ;;
  }

  dimension: guarnici_d {
    type: string
    sql: ${TABLE}.GUARNICI_D ;;
  }

  dimension: letrero_c {
    type: string
    sql: ${TABLE}.LETRERO_C ;;
  }

  dimension: letrero_d {
    type: string
    sql: ${TABLE}.LETRERO_D ;;
  }

  dimension: municipio {
    type: string
    sql: ${TABLE}.municipio ;;
  }

  dimension: nom_ent {
    type: string
    sql: ${TABLE}.NOM_ENT ;;
  }

  dimension: nom_loc {
    type: string
    sql: ${TABLE}.NOM_LOC ;;
  }

  dimension: nom_mun {
    type: string
    sql: ${TABLE}.NOM_MUN ;;
  }

  dimension: p15_a29_a {
    type: number
    sql: ${TABLE}.P15A29A ;;
  }

  dimension: p15_a29_a_p {
    type: number
    sql: ${TABLE}.P15A29A_P ;;
  }

  dimension: p30_a59_a {
    type: number
    sql: ${TABLE}.P30A59A ;;
  }

  dimension: p30_a59_a_p {
    type: number
    sql: ${TABLE}.P30A59A_P ;;
  }

  dimension: p_60_ymas {
    type: number
    sql: ${TABLE}.P_60YMAS ;;
  }

  dimension: p_60_ymas_p {
    type: number
    sql: ${TABLE}.P_60YMAS_P ;;
  }

  dimension: p_cd_p {
    type: number
    sql: ${TABLE}.P_CD_P ;;
  }

  dimension: p_cd_t {
    type: number
    sql: ${TABLE}.P_CD_T ;;
  }

  dimension: paratran_c {
    type: string
    sql: ${TABLE}.PARATRAN_C ;;
  }

  dimension: paratran_d {
    type: string
    sql: ${TABLE}.PARATRAN_D ;;
  }

  dimension: pasopeat_c {
    type: string
    sql: ${TABLE}.PASOPEAT_C ;;
  }

  dimension: pasopeat_d {
    type: string
    sql: ${TABLE}.PASOPEAT_D ;;
  }

  dimension: pob0_14 {
    type: number
    sql: ${TABLE}.POB0_14 ;;
  }

  dimension: pob0_14_p {
    type: number
    sql: ${TABLE}.POB0_14_P ;;
  }

  dimension: pobfem {
    type: number
    sql: ${TABLE}.POBFEM ;;
  }

  dimension: poblacion {
    type: string
    sql: ${TABLE}.poblacion ;;
  }

  dimension: pobmas {
    type: number
    sql: ${TABLE}.POBMAS ;;
  }

  dimension: pobtot {
    type: number
    sql: ${TABLE}.POBTOT ;;
  }

  dimension: ppobfem {
    type: number
    sql: ${TABLE}.PPOBFEM ;;
  }

  dimension: ppomas {
    type: number
    sql: ${TABLE}.PPOMAS ;;
  }

  dimension: pro_ocup_c {
    type: number
    sql: ${TABLE}.PRO_OCUP_C ;;
  }

  dimension: prom_ocup {
    type: number
    sql: ${TABLE}.PROM_OCUP ;;
  }

  dimension: puesambu_c {
    type: string
    sql: ${TABLE}.PUESAMBU_C ;;
  }

  dimension: puesambu_d {
    type: string
    sql: ${TABLE}.PUESAMBU_D ;;
  }

  dimension: puessemi_c {
    type: string
    sql: ${TABLE}.PUESSEMI_C ;;
  }

  dimension: puessemi_d {
    type: string
    sql: ${TABLE}.PUESSEMI_D ;;
  }

  dimension: rampas_c {
    type: string
    sql: ${TABLE}.RAMPAS_C ;;
  }

  dimension: rampas_d {
    type: string
    sql: ${TABLE}.RAMPAS_D ;;
  }

  dimension: recucall_c {
    type: string
    sql: ${TABLE}.RECUCALL_C ;;
  }

  dimension: recucall_d {
    type: string
    sql: ${TABLE}.RECUCALL_D ;;
  }

  dimension: semaaudi_c {
    type: string
    sql: ${TABLE}.SEMAAUDI_C ;;
  }

  dimension: semaaudi_d {
    type: string
    sql: ${TABLE}.SEMAAUDI_D ;;
  }

  dimension: semapeat_c {
    type: string
    sql: ${TABLE}.SEMAPEAT_C ;;
  }

  dimension: semapeat_d {
    type: string
    sql: ${TABLE}.SEMAPEAT_D ;;
  }

  dimension: sucursal {
    type: string
    sql: ${TABLE}.sucursal ;;
    primary_key: yes
  }

  dimension: telpub_c {
    type: string
    sql: ${TABLE}.TELPUB_C ;;
  }

  dimension: telpub_d {
    type: string
    sql: ${TABLE}.TELPUB_D ;;
  }

  dimension: tipomza {
    type: string
    sql: ${TABLE}.TIPOMZA ;;
  }

  dimension: transcol_c {
    type: string
    sql: ${TABLE}.TRANSCOL_C ;;
  }

  dimension: transcol_d {
    type: string
    sql: ${TABLE}.TRANSCOL_D ;;
  }

  dimension: tvipahab {
    type: number
    sql: ${TABLE}.TVIPAHAB ;;
  }

  dimension: tvipahab_p {
    type: number
    sql: ${TABLE}.TVIPAHAB_P ;;
  }

  dimension: v3_masocu {
    type: number
    sql: ${TABLE}.V3MASOCU ;;
  }

  dimension: v3_masocu_p {
    type: number
    sql: ${TABLE}.V3MASOCU_P ;;
  }

  dimension: vivnohab {
    type: number
    sql: ${TABLE}.VIVNOHAB ;;
  }

  dimension: vivnohab_p {
    type: number
    sql: ${TABLE}.VIVNOHAB_P ;;
  }

  dimension: vivpar {
    type: number
    sql: ${TABLE}.VIVPAR ;;
  }

  dimension: vivpar_p {
    type: number
    sql: ${TABLE}.VIVPAR_P ;;
  }

  dimension: vivtot {
    type: number
    sql: ${TABLE}.VIVTOT ;;
  }

  dimension: vph_c_el {
    type: number
    sql: ${TABLE}.VPH_C_EL ;;
  }

  dimension: vph_c_el_p {
    type: number
    sql: ${TABLE}.VPH_C_EL_P ;;
  }

  dimension: vph_dren {
    type: number
    sql: ${TABLE}.VPH_DREN ;;
  }

  dimension: vph_dren_p {
    type: number
    sql: ${TABLE}.VPH_DREN_P ;;
  }

  dimension: vph_exsa {
    type: number
    sql: ${TABLE}.VPH_EXSA ;;
  }

  dimension: vph_exsa_p {
    type: number
    sql: ${TABLE}.VPH_EXSA_P ;;
  }

  dimension: vph_pidt {
    type: number
    sql: ${TABLE}.VPH_PIDT ;;
  }

  dimension: vph_pidt_p {
    type: number
    sql: ${TABLE}.VPH_PIDT_P ;;
  }

  dimension: x {
    type: number
    sql: ${TABLE}.X ;;
  }

  dimension: y {
    type: number
    sql: ${TABLE}.Y ;;
  }

#### MEDIDAS

  measure: count {
    type: count
    drill_fields: []
  }

  measure: pobtot_sum {
    type: sum
    sql: ${pobtot} ;;
  }
  measure: pobtot_avg {
    type: average
    sql: ${pobtot};;
  }

  measure: pobfem_sum {
    type: sum
    sql: ${pobfem};;
  }

  measure: pobfem_avg {
    type: average
    sql: ${pobfem};;
  }

  measure: pobfmas_sum {
    type: sum
    sql: ${pobmas};;
  }

  measure: pobmas_avg {
    type: average
    sql: ${pobmas};;
  }

  measure: pob014_sum {
    type: sum
    sql: ${pob0_14};;
  }

  measure: pob014_avg {
    type: average
    sql: ${pob0_14};;
  }

  measure: pob1529_sum {
    type: sum
    sql: ${p15_a29_a};;
  }

  measure: pob1529_avg {
    type: average
    sql: ${p15_a29_a};;
  }

  measure: pob3059_sum {
    type: sum
    sql: ${p30_a59_a};;
  }

  measure: pob3059_avg {
    type: average
    sql: ${p30_a59_a};;
  }

  measure: pob60mas_sum {
    type: sum
    sql: ${p_60_ymas};;
  }

  measure: pob60mas_avg {
    type: average
    sql: ${p_60_ymas};;
  }

  measure: pobCD_sum {
    type: sum
    sql: ${p_cd_t};;
  }

  measure: pobCD_avg {
    type: average
    sql: ${p_cd_t};;
  }

  measure: escolaridad_avg {
    type: average
    sql: ${graproes};;
  }

}
