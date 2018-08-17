view: usa_names_1910_2013 {
  sql_table_name: LookerDataset1.usa_names_1910_2013 ;;

  dimension: gender {
    type: string
    drill_fields: [state,year_list,year]
    sql: ${TABLE}.gender ;;
  }

  dimension: name {
    type: string
    drill_fields: [gender,year_list,state,year]
    sql: ${TABLE}.name ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  dimension: state {
    type: string
    drill_fields: [gender,year_list,year]
    sql: ${TABLE}.state ;;
  }

  dimension: year {
    type: number
    drill_fields: [gender,state,year,year_list]
    sql: ${TABLE}.year ;;
  }
dimension: year_list
{
  drill_fields: [gender,state,year]
  sql: CASE WHEN ${year}>1910 and ${year}<=1925 then '1911-1925'
  when ${year}>1900 and ${year}<=1910 then '1900-1910'
  when ${year}>1925 and ${year}<=1950 then '1926-1950'
  when ${year}>1950 and ${year}<=1975 then '1951-1975'
  when ${year}>1975 and ${year}<=2000 then '1976-2000'
  when ${year}>2000 and ${year}<=2005 then '2001-2005'
  when ${year}>2005 and ${year}<=2010 then '2006-2010'
  when ${year}>2010 and ${year}<=2015 then '2011-2015'
  when ${year}>2015 and ${year}<=2020 then '2016-2020' END;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
