view: economy_data {
  sql_table_name: redshift15.economy_data ;;

  dimension: date_1 {
    type: string
    sql: ${TABLE}.date_1 ;;
  }

  dimension: decade {
    type: number
    sql: ${TABLE}.decade ;;
  }

  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }

  dimension: number_of_records {
    type: string
    sql: ${TABLE}.number_of_records ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
