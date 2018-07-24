connection: "redshift"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: travel_hospitality_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: travel_hospitality_default_datagroup


explore: claimsdata {}


explore: eu_dataset {}

explore: travelhospitalitylob {}
