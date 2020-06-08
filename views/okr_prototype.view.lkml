view: okr_prototype {
  sql_table_name: lookerpoc_ds.OKR_PROTOTYPE ;;

  dimension: eng_commitment_level {
    type: string
    sql: ${TABLE}.Eng_Commitment_Level ;;
  }

  dimension: investment_pillar {
    type: string
    sql: ${TABLE}.Investment_Pillar ;;
  }

  dimension: key_results {
    type: string
    sql: ${TABLE}.Key_Results ;;
  }

  dimension: kr_id {
    type: string
    sql: ${TABLE}.KR_ID ;;
  }

  dimension: kr_score {
    type: string
    sql: ${TABLE}.KR_Score ;;
  }

  dimension: objective_id {
    type: string
    sql: ${TABLE}.Objective_ID ;;
  }

  dimension: objectives {
    type: string
    sql: ${TABLE}.Objectives ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.Owner ;;
  }

  dimension: product_area {
    type: string
    sql: ${TABLE}.Product_Area ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: Avg_KR_Score {
    type: average
    sql: ${kr_score} ;;
  }


}
