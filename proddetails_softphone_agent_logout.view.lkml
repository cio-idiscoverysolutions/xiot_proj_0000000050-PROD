view: proddetails_softphone_agent_logout {
  sql_table_name: dbo.proddetails_SoftphoneAgentLogout ;;

  dimension: control_number {
    type: string
    sql: ${TABLE}.controlNumber ;;
  }

  dimension: prod_details {
    type: string
    sql: ${TABLE}.prodDetails ;;
  }

  dimension: prod_id {
    type: number
    sql: ${TABLE}.prodID ;;
  }

  dimension: prod_name {
    type: string
    sql: ${TABLE}.Prod_Name ;;
  }

  measure: count {
    type: count
    drill_fields: [prod_name]
  }
}
