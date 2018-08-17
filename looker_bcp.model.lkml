connection: "looker_bcpbigquery"

# include all the views
include: "*.view"

datagroup: looker_bcp_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_bcp_default_datagroup

explore: project_tycho_reports_copy {}

explore: usa_names_1910_2013 {}

explore: usa_names_1910_current {}
