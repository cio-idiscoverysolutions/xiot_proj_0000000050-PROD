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

explore: vw_productions_overview{}

explore: proddetails_observe_it {}

explore: proddetails_kronos_punch_details {}

explore: proddetails_salesforce_cases_created {}

explore: proddetails_salesforce_cases_modified {}

explore: proddetails_salesforce_tasks_created {}

explore: proddetails_salesforce_tasks_modified {}

explore: proddetails_kronos_timecard_audits {}

explore: proddetails_softphone_agent_logout {}

explore: proddetails_harris_data_s2access {}

explore: proddetails_salesforce_loginhistory {}
