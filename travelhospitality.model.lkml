connection: "redshift"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: travelhospitality_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: travelhospitality_default_datagroup


explore: salesdata {}


explore: travelhospitalityhotelelig {}

explore: travelhospitalitylob {
  join: travelhospitalityhotelelig {
    type: left_outer
    sql_on: ${travelhospitalityhotelelig.groupaccountid}=${travelhospitalitylob.groupaccountid} ;;
    relationship: many_to_one
  }
}
