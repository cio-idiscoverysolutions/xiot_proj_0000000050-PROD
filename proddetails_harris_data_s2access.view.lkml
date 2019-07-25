view: proddetails_harris_data_s2access {
  sql_table_name: dbo.proddetails_Harris_data_s2access ;;

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
    sql: ${TABLE}.prod_Name ;;
  }

  measure: count {
    type: count
    drill_fields: [prod_name]
  }
}
