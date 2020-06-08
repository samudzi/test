view: pmxokrmetrics {
  derived_table: {
    sql: Select "Objective #1: Workfront is the source of truth for GCP/TI project data and this data is being used by Cloud Programs to run portfolio reviews and send status updates to execs." as OKRs, "Portfolio Reviews" as Project_Name, "Sarah Marshall" as Owner, "2/14/20" as Estimated_Release_Date, "Green" as State, "On Track" as Status,"50%" as Projet_Weight

            UNION ALL

            Select "Objective #1: Workfront is the source of truth for GCP/TI project data and this data is being used by Cloud Programs to run portfolio reviews and send status updates to execs." as OKRs, "Dependencies Tracking" as Project_Name, "Ben Ram" as Owner, "2/14/20" as Estimated_Release_Date, "Green" as State, "On Track" as Status,"50%" as Projet_Weight

            UNION ALL

            Select "Objective #2:  GCP citizens easily retrieve and report on execution data in a secure, timely, relevant, and efficient manner."  as OKRs, "Portfolio Reviews" as Project_Name, "Sarah Marshall" as Owner, "2/14/20" as Estimated_Release_Date, "Green" as State, "On Track" as Status,"40%" as Projet_Weight

            UNION ALL

            Select "Objective #2:  GCP citizens easily retrieve and report on execution data in a secure, timely, relevant, and efficient manner." as OKRs, "Commit Process" as Project_Name, "Michael Zadda" as Owner, "7/6/20" as Estimated_Release_Date, "Red" as State, "Off Track" as Status,"40%" as Projet_Weight

            UNION ALL

            Select "Objective #2:  GCP citizens easily retrieve and report on execution data in a secure, timely, relevant, and efficient manner." as OKRs, "Risk Framework" as Project_Name, "Bryan Cam" as Owner, "3/30/20" as Estimated_Release_Date, "Green" as State, "On Track" as Status,"20%" as Projet_Weight

            UNION ALL

            Select "Objective #3: Workflow between tools across the PMX ecosystem is seamless." as OKRs, "Integrations" as Project_Name, "Rhan Singh/Ben Ram" as Owner, "2/11/20" as Estimated_Release_Date, "Green" as State, "On Track" as Status,"50%" as Projet_Weight
            UNION ALL

            Select "Objective #3: Workflow between tools across the PMX ecosystem is seamless." as OKRs, "Risk Status Unification" as Project_Name, "Rhan Singh" as Owner, "2/27/20" as Estimated_Release_Date, "Green" as State, "On Track" as Status,"50%" as Projet_Weight

            UNION ALL

            Select "Objective #4: Data in the PMX ecosystem is high quality & accessible." as OKRs, "Data Health Trends" as Project_Name, "Rhan Singh" as Owner, "8/25/20" as Estimated_Release_Date, "Green" as State, "On Track" as Status,"50%" as Projet_Weight

            UNION ALL

            Select "Objective #4: Data in the PMX ecosystem is high quality & accessible." as OKRs, " Looker POC" as Project_Name, "Pramod Suraparaju" as Owner, "1/31/20" as Estimated_Release_Date, "Green" as State, "On Track" as Status,"25%" as Projet_Weight

            UNION ALL

            Select "Objective #4: Data in the PMX ecosystem is high quality & accessible." as OKRs, "WF Cleanup" as Project_Name, "ACE" as Owner, "6/1/20" as Estimated_Release_Date, "Green" as State, "On Track" as Status,"25%" as Projet_Weight

            UNION ALL

            Select "Objective #5: Real-time collaboration between teams is frictionless." as OKRs, "Dependencies Tracking" as Project_Name, "Ben Ram" as Owner, "2/14/20" as Estimated_Release_Date, "Green" as State, "On Track" as Status,"50%" as Projet_Weight

            UNION ALL

            Select "Objective #5: Real-time collaboration between teams is frictionless." as OKRs, "Integrations" as Project_Name, "Rhan Singh / Ben Ram" as Owner, "2/11/20" as Estimated_Release_Date, "Green" as State, "On Track" as Status,"50%" as Projet_Weight
             ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: okrs {
    type: string
    sql: ${TABLE}.OKRs ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.Project_Name ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.Owner ;;
  }

  dimension: estimated_release_date {
    type: string
    sql: ${TABLE}.Estimated_Release_Date ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;

  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
    html:
    {% if {{value}} == "On Track"%}
    <font color = "green">{{rendered_value}}</font>
    {% elsif {{value}} == "Off Track" %}
    <font color = "red">{{rendered_value}}</font>
    {% endif %};;
  }

  dimension: Projet_Weight {
    type: string
    sql: ${TABLE}.Projet_Weight ;;
  }



  set: detail {
    fields: [
      okrs,
      project_name,
      owner,
      estimated_release_date,
      state,
      status,
      Projet_Weight
    ]
  }
}
