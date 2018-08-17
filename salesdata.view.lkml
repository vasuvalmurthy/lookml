view: salesdata {
  sql_table_name: redshift15.salesdata ;;

  dimension: account_created {
    type: string
    sql: ${TABLE}.account_created ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: last_login {
    type: string
    sql: ${TABLE}.last_login ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}.payment_type ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: transaction_date {
    type: string
    sql: ${TABLE}.transaction_date ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
