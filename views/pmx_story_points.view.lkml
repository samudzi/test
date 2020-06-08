view: pmx_story_points {
  sql_table_name: `lookerpoc01.lookerpoc_ds.PMX_STORY_POINTS`
    ;;

  dimension: story_pt_sprint_start {
    type: number
    sql: ${TABLE}.Initial_Story_Points__sprint_start_ ;;
  }
  measure: Sprint_Start {
    type: max
    sql: ${story_pt_sprint_start} ;;
    }

  dimension: kanban_fixed {
    type: number
    sql: ${TABLE}.Kanban_view___Fixed ;;
  }
  measure: Fixed {
    type: max
    sql: ${kanban_fixed} ;;
  }

  dimension: kanban_remaining_not_started_or_working {
    type: number
    sql: ${TABLE}.Kanban_view___remaining__Not_started___Working_ ;;
  }

  measure: Remaining_Work {
    type: max
    sql: ${kanban_remaining_not_started_or_working} ;;

    }

  dimension: peak_story_pt_mid_sprint {
    type: number
    sql: ${TABLE}.Peak_Story_Points__mid_sprint_ ;;
  }

  measure: Mid_Sprint {
    type: max
    sql: ${peak_story_pt_mid_sprint} ;;
  }


  dimension: remaining_story_pt_sprint_end {
    type: number
    sql: ${TABLE}.Remaining_Story_Points__at_sprint_end_ ;;
  }
  measure: Sprint_End {
    type: max
    sql: ${remaining_story_pt_sprint_end} ;;
  }

  dimension: sprint {
    type: string
    sql: ${TABLE}.Sprint ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
