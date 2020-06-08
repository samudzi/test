view: pmx_kanban_metrics {
  drill_fields:[backlog_category]
  sql_table_name: lookerpoc_ds.PMX_KANBAN_METRICS ;;

  dimension: assignee {
    type: string
    sql: ${TABLE}.Assignee ;;
  }

  dimension: backlog_category {
    type: string
    sql: ${TABLE}.Backlog_Category ;;
    order_by_field: start_date

    }
  set: backlog_category {
    fields: [assignee,priority,issue,status,url]
  }


  dimension: created_date {
    type: string
    sql: ${TABLE}.created_date ;;
  }


  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: end_date {
    type: string
    sql: ${TABLE}.end_date ;;
  }

  dimension: issue {
    type: string
    sql: ${TABLE}.Issue ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.Priority ;;
  }

  dimension: resolved_date {
    type: string
    sql: ${TABLE}.resolved_date ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.start_date ;;
  }

  dimension: Date {
    type: string
    sql: ${TABLE}.Date ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }

  dimension: verifier {
    type: string
    sql: ${TABLE}.Verifier ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  measure: story_points {
    type: sum
    sql: ${stry_pt} ;;
  }


dimension: stry_pt {
type: string
sql: ${TABLE}.story_points ;;
}
  measure: count {
    type: count
  }

  measure: Effort_Count {
    type: sum

    filters: {
      field: status
      value: "FIXED"
    }
    sql: ${stry_pt} ;;
  }

  measure: Total_Count {
    type: sum

    filters: {
      field: status
      value: "FIXED, NEW, ASSIGNED, ACCEPTED"
    }
    sql: ${stry_pt} ;;
  }

  measure: Burndown_Rate {
    type: number
    sql: ${Effort_Count}/ ${Total_Count} ;;
    value_format_name: percent_0
  }



  }
