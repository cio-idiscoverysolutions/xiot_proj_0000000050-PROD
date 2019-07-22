connection: "xiot_proj_0000000050-prod"

# include all the views
include: "*.view"

datagroup: xiot_proj_0000000050_prod_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: xiot_proj_0000000050_prod_default_datagroup

explore: ids_production_log {}

explore: observeit_prod {}

explore: production_log {}

explore: production_units {}

explore: productions {}

explore: sysdiagrams {}
