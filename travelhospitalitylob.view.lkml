view: travelhospitalitylob {
  sql_table_name: redshift15.travelhospitalitylob ;;

  measure: attachitemcnt {
    type: sum
    drill_fields: [groupaccountname,groupaccountid,lineofbusiness,traveldate_date]
    sql: ${TABLE}.attachitemcnt ;;
  }

  measure: grossbooking {
    type: sum
    drill_fields: [groupaccountname,groupaccountid,lineofbusiness,traveldate_date]
    sql: ${TABLE}.grossbooking ;;
  }

  dimension: groupaccountid {
    type: number
    value_format_name: id
    sql: ${TABLE}.groupaccountid ;;
  }

  dimension: groupaccountname {
    type: string
    sql: ${TABLE}.groupaccountname ;;
  }

  dimension: lineofbusiness {
    type: string
    sql: ${TABLE}.lineofbusiness ;;
  }

  measure: totaltripcnt {
    type: sum
    drill_fields: [groupaccountname,groupaccountid,lineofbusiness,traveldate_date]
    sql: ${TABLE}.totaltripcnt ;;
  }

  dimension_group: traveldate {
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
    sql: ${TABLE}.traveldate ;;
  }

  measure: count {
    type: count
    drill_fields: [groupaccountname]
  }
}
