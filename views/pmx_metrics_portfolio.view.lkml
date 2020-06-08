view: pmx_metrics_portfolio {
  sql_table_name: `lookerpoc01.lookerpoc_ds.PMX_METRICS_PORTFOLIO`
    ;;

  dimension: eng_commitment_level {
    type: string
    sql: ${TABLE}.Eng_commitment_level ;;
  }

  dimension: kr_score {
    type: string
    sql: ${TABLE}.kr_score ;;
  }

  dimension: kr_status_rationale {
    type: string
    sql: ${TABLE}.kr_status_rationale ;;
  }

  dimension: milestone_condition {
    type: string
    sql: ${TABLE}.milestone_condition ;;
  }

  dimension: not_committed_counter {
    type: number
    sql: ${TABLE}.not_committed_counter ;;
  }

  dimension: granularity {
    type: string
    sql: ${TABLE}.objective_granularity ;;
  }

  dimension: objective {
    type: string
    sql: ${TABLE}.okr_objective ;;
  }

  dimension: portfolio_name {
    type: string
    sql: ${TABLE}.portfolio_name ;;
  }

  dimension: product_effort_or_horizontal_effort {
    type: string
    sql: ${TABLE}.product_effort_or_horizontal_effort ;;
  }

  dimension: program_name {
    type: string
    sql: ${TABLE}.program_name ;;
  }

  dimension: project_condition {
    type: string
    sql: ${TABLE}.project_condition ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
  }

  dimension: project_owner {
    type: string
    sql: ${TABLE}.project_owner ;;
  }

  dimension: project_percent_complete {
    type: number
    sql: ${TABLE}.project_percent_complete ;;
  }

  measure: Percent_Complete {
    type: max
    sql: project_percent_complete/100 ;;
    value_format_name: percent_2
}
  dimension_group: project_planned_completion {
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
    sql: ${TABLE}.project_planned_completion_date ;;
  }

  dimension_group: project_planned_start {
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
    sql: ${TABLE}.project_planned_start_date ;;
  }

  dimension: project_plc_phase {
    type: string
    sql: ${TABLE}.project_plc_phase ;;
  }

  dimension: project_priority {
    type: number
    sql: ${TABLE}.project_priority ;;
  }

  dimension: horizontal {
    type: string
    sql: ${TABLE}.tag_cloud_horizontal ;;
  }

  dimension: task_id {
    type: string
    sql: ${TABLE}.task_id ;;
  }

  dimension: key_result {
    type: string
    sql: ${TABLE}.task_key_result ;;
  }

  dimension: reporting_period {
    type: string
    sql: ${TABLE}.task_kr_reporting_period ;;
  }

  dimension_group: task_last_update {
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
    sql: ${TABLE}.task_last_update_date ;;
  }

  dimension: milestone_type {
    type: string
    sql: ${TABLE}.task_milestone_type ;;
  }

  dimension: task_name {
    type: string
    sql: ${TABLE}.task_name ;;
  }

  dimension_group: task_planned_completion {
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
    sql: ${TABLE}.task_planned_completion_date ;;
  }

  dimension: task_planned_external_launch_date {
    type: string
    sql: ${TABLE}.task_planned_external_launch_date ;;
  }

  dimension_group: task_planned_start {
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
    sql: ${TABLE}.task_planned_start_date ;;
  }

  dimension:reporting_channel {
    type: string
    sql: ${TABLE}.task_reporting_channel ;;
  }

  dimension: task_status {
    type: string
    sql: ${TABLE}.task_status ;;
  }
  measure: Project_Count{
    type: count_distinct
    sql: ${project_name} ;;
  }
  measure: count {
    type: count
    drill_fields: [task_name, program_name, project_name, portfolio_name]
  }
}
