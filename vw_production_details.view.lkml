view: vw_production_details {
  sql_table_name: dbo.vwProductionDetails ;;

  dimension: production_details_ctrl_number {
    type: string
    sql: ${TABLE}."production_details.ctrl_number" ;;
  }

  dimension: production_details_prod_details {
    type: string
    sql: ${TABLE}."production_details.prod_details" ;;
  }

  dimension: production_details_prod_id {
    type: number
    sql: ${TABLE}."production_details.prod_id" ;;
  }

  dimension: productions_prod_name {
    type: string
    sql: ${TABLE}."productions.prod_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [productions_prod_name]
  }
}
