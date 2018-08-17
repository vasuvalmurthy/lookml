view: project_tycho_reports_copy {
  sql_table_name: LookerDataset1.project_tycho_reports_copy ;;

  dimension: cases {
    type: string
    sql: ${TABLE}.cases ;;
  }

  dimension: disease {
    type: string
    sql: ${TABLE}.disease ;;
  }

  dimension: epi_week {
    type: number
    sql: ${TABLE}.epi_week ;;
  }

  dimension: incidence_per_100000 {
    type: number
    sql: ${TABLE}.incidence_per_100000 ;;
  }

  dimension: loc {
    type: string
    sql: ${TABLE}.loc ;;
  }

  dimension: loc_type {
    type: string
    sql: ${TABLE}.loc_type ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
