view: proddetails_salesforce_cases_created {
  sql_table_name: dbo.proddetails_Salesforce_CasesCreated ;;

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
