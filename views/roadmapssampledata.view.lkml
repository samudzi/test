view: roadmapssampledata {
  derived_table: {
    sql: Select "Storage" as portfolio_name, "GCP Core Infra" as product_group, "TI,GCP" as cloud_product_area, "Planning & Design" as plc_phase, "Beta" as milestone_type, "New" as launch_status,"2020-04-01" as planned_completion_date,"Q1 2020 - Q2 2020" as roadmap_period,"Off Track - mitigation identified" as milestone_condition

      UNION ALL

      Select "Storage" as portfolio_name, "GCP Core Infra" as product_group, "TI,GCP" as cloud_product_area, "Execution" as plc_phase, "Alpha" as milestone_type, "In-Progress" as launch_status,"2020-03-31" as planned_completion_date,"Q1 2020 - Q2 2020" as roadmap_period,"On Track" as milestone_condition

      UNION ALL

      Select "OSP" as portfolio_name, "Cloud Services Platform" as product_group, "TI,GCP" as cloud_product_area, "Planning & Design" as plc_phase, "Beta" as milestone_type, "New" as launch_status,"2020-12-30" as planned_completion_date,"Q3 2020 - Q2 2021" as roadmap_period,"Unknown" as milestone_condition

      UNION ALL

      Select "OSP" as portfolio_name, "Cloud Services Platform" as product_group, "TI,GCP" as cloud_product_area, "Launch" as plc_phase, "Alpha" as milestone_type, "In-Progress" as launch_status,"2020-03-31" as planned_completion_date,"Q1 2020 - Q2 2020" as roadmap_period,"On Track" as milestone_condition

      UNION ALL

      Select "Cloud Billing" as portfolio_name, "Cloud Services Platform" as product_group, "TI,GCP" as cloud_product_area, "Execution" as plc_phase, "GA" as milestone_type, "In-Progress" as launch_status,"2020-02-03" as planned_completion_date,"Q1 2020 - Q2 2020" as roadmap_period,"On Track" as milestone_condition

      UNION ALL

      Select "Cloud Billing" as portfolio_name, "Cloud Services Platform" as product_group, "TI,GCP" as cloud_product_area, "Execution" as plc_phase, "Alpha" as milestone_type, "On Track" as launch_status,"2020-05-03" as planned_completion_date,"Q3 2020 - Q4 2020" as roadmap_period,"On Track" as milestone_condition
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: portfolio_name {
    type: string
    sql: ${TABLE}.portfolio_name ;;
  }

  dimension: product_group {
    type: string
    sql: ${TABLE}.product_group ;;
  }

  dimension: cloud_product_area {
    type: string
    sql: ${TABLE}.cloud_product_area ;;
  }

  dimension: plc_phase {
    type: string
    sql: ${TABLE}.plc_phase ;;
  }

  dimension: milestone_type {
    type: string
    sql: ${TABLE}.milestone_type ;;
  }

  dimension: launch_status {
    type: string
    sql: ${TABLE}.launch_status ;;
  }

  dimension: planned_completion_date {
    type: string
    sql: ${TABLE}.planned_completion_date ;;
  }

  dimension: roadmap_period {
    type: string
    sql: ${TABLE}.roadmap_period ;;
  }

  dimension: milestone_condition {
    type: string
    sql: ${TABLE}.milestone_condition ;;
  }

  set: detail {
    fields: [
      portfolio_name,
      product_group,
      cloud_product_area,
      plc_phase,
      milestone_type,
      launch_status,
      planned_completion_date,
      roadmap_period,
      milestone_condition
    ]
  }
}
