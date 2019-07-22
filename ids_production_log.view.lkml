view: ids_production_log {
  sql_table_name: dbo.Ids_ProductionLog ;;

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

  dimension: table_name {
    type: string
    sql: ${TABLE}.TableName ;;
  }

  dimension: total_headers {
    type: string
    sql: ${TABLE}.TotalHeaders ;;
  }

  dimension: total_records {
    type: string
    sql: ${TABLE}.TotalRecords ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}."User" ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name]
  }
}
