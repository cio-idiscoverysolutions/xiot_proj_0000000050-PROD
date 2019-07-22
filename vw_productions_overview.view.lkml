view: vw_productions_overview {
  sql_table_name: dbo.vwProductionsOverview ;;

  dimension: productionlog_control_number {
    type: string
    sql: ${TABLE}."productionlog.control_number" ;;
  }

  dimension: productionlog_end_time {
    type: string
    sql: ${TABLE}."productionlog.end_time" ;;
  }

  dimension: productionlog_start_time {
    type: string
    sql: ${TABLE}."productionlog.start_time" ;;
  }

  dimension: productionlog_total_headers {
    type: string
    sql: ${TABLE}."productionlog.total_headers" ;;
  }

  dimension: productionlog_total_records {
    type: number
    sql: ${TABLE}."productionlog.total_records" ;;
  }

  dimension_group: productions_prod {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."productions.prod_date" ;;
  }

  dimension: productions_prod_descr {
    type: string
    sql: ${TABLE}."productions.prod_descr" ;;
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
