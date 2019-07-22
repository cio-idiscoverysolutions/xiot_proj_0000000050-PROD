view: production_log {
  sql_table_name: dbo.ProductionLog ;;

  dimension: columns_exported {
    type: string
    sql: ${TABLE}.ColumnsExported ;;
  }

  dimension: control_number {
    type: string
    sql: ${TABLE}.ControlNumber ;;
  }

  dimension_group: endtime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ENDTime ;;
  }

  dimension: export_log_id {
    type: number
    sql: ${TABLE}.ExportLogID ;;
  }

  dimension: hash_value {
    type: string
    sql: ${TABLE}.HashValue ;;
  }

  dimension: prod_id {
    type: number
    sql: ${TABLE}.ProdID ;;
  }

  dimension: prod_unit_id {
    type: number
    sql: ${TABLE}.ProdUnitID ;;
  }

  dimension: query_used {
    type: string
    sql: ${TABLE}.QueryUsed ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.StartTime ;;
  }

  dimension: total_headers {
    type: string
    sql: ${TABLE}.TotalHeaders ;;
  }

  dimension: total_records {
    type: number
    sql: ${TABLE}.TotalRecords ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
