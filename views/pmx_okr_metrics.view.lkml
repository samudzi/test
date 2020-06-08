view: pmx_okr_metrics {

  sql_table_name: lookerpoc_ds.PMX_OKR_METRICS ;;

  dimension: estimated_release_date {
    type: string
    sql: ${TABLE}.Estimated_Release_Date ;;
  }

  dimension: key_result {
    type: string
    sql: ${TABLE}.Key_Result ;;
  }

  dimension: krstatus {
    type: string
    sql: ${TABLE}.KR_Status ;;
    link: {
      label: "Drill KR Status"
      url:"/dashboards/40?Krstatus={{value}}&key_result=
      {{ _filters['pmx_okr_metrics.key_result'] | url_encode }}"
    }
    html:
    {% if {{value}} == "On Track"%}
    <font color = "green">{{rendered_value}}</font>
    {% elsif {{value}} == "At Risk" %}
    <font color = "red">{{rendered_value}}</font>
    {% endif %};;
  }



  dimension: objectivestatus {
    type: string
    sql: ${TABLE}.Objective_Status ;;

    html:
    {% if {{value}} == "On Track"%}
    <font color = "green">{{rendered_value}}</font>
    {% elsif {{value}} == "At Risk" %}
    <font color = "red">{{rendered_value}}</font>
    {% endif %};;
  }

  dimension: Objective {
    type: string
    sql: ${TABLE}.OKRs ;;

  }

  dimension: owner {
    type: string
    sql: ${TABLE}.Owner ;;
  }

  dimension: percent_project_weight {
    type: string
    sql: ${TABLE}.Percent_Project_Weight ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.Project_Name ;;
  }

  dimension: project_status {
    type: string
    sql: ${TABLE}.Project_Status ;;
    html:
    {% if {{value}} == "On Track"%}
    <font color = "green">{{rendered_value}}</font>
    {% elsif {{value}} == "At Risk" %}
    <font color = "red">{{rendered_value}}</font>
    {% endif %};;
  }

  measure: count {
    type: count
}
  }
