view: production_units {
  sql_table_name: dbo.ProductionUnits ;;

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: prod_id {
    type: number
    sql: ${TABLE}.ProdID ;;
  }

  dimension: prod_unit_id {
    type: number
    sql: ${TABLE}.ProdUnitID ;;
  }

  dimension: scmst_id {
    type: string
    sql: ${TABLE}.SCMST_ID ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TableName ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name]
  }
}
