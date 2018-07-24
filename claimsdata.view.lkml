view: claimsdata {
  sql_table_name: redshift15.claimsdata ;;

  dimension: calculation1 {
    type: number
    sql: ${TABLE}.calculation1 ;;
  }

  dimension: calculation2 {
    type: string
    sql: ${TABLE}.calculation2 ;;
  }

  dimension: claim_date {
    type: string
    sql: ${TABLE}.claim_date ;;
  }

  dimension: claim_number {
    type: string
    sql: ${TABLE}.claim_number ;;
  }

  dimension: claim_status {
    type: string
    sql: ${TABLE}.claim_status ;;
  }

  dimension: claim_type {
    type: string
    sql: ${TABLE}.claim_type ;;
  }

  dimension: days_to_settle {
    type: string
    sql: ${TABLE}.days_to_settle ;;
  }

  dimension: expense_paid {
    type: string
    sql: ${TABLE}.expense_paid ;;
  }

  dimension: indemnity_paid {
    type: string
    sql: ${TABLE}.indemnity_paid ;;
  }

  dimension: line_of_bussiness {
    type: string
    sql: ${TABLE}.line_of_bussiness ;;
  }

  dimension: pay_indicator {
    type: string
    sql: ${TABLE}.pay_indicator ;;
  }

  dimension: resolution_method {
    type: string
    sql: ${TABLE}.resolution_method ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: total_paid {
    type: string
    sql: ${TABLE}.total_paid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
