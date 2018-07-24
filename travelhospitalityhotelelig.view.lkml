view: travelhospitalityhotelelig {
  sql_table_name: redshift15.travelhospitalityhotelelig ;;

  measure: aireligibility {
    type: average
    drill_fields: [groupaccountname,groupaccountid,traveldate_date,traveldate_month,traveldate_quarter,traveldate_year]
    sql: ${TABLE}.aireligibility ;;
  }

  measure: grossbooking {
    type: sum
    drill_fields: [groupaccountname,groupaccountid,traveldate_date,traveldate_month,traveldate_quarter,traveldate_year]
    sql: ${TABLE}.grossbooking ;;
  }
  measure: attachitemcnt {
    type: sum
    drill_fields: [groupaccountname,groupaccountid,traveldate_date,traveldate_month,traveldate_quarter,traveldate_year]
    sql: ${TABLE}.attachitemcnt ;;
  }

  measure: careligibility {
    type: average
    drill_fields: [groupaccountname,groupaccountid,traveldate_date,traveldate_month,traveldate_quarter,traveldate_year]
    sql: ${TABLE}.careligibility ;;
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

  measure: raileligibility {
    type: average
    drill_fields: [groupaccountname,groupaccountid,traveldate_date,traveldate_month,traveldate_quarter,traveldate_year]
    sql: ${TABLE}.raileligibility ;;
  }

  measure: totaltripcnt {
    type: sum
    drill_fields: [groupaccountname,groupaccountid,traveldate_date,traveldate_month,traveldate_quarter,traveldate_year]
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
