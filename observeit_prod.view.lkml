view: observeit_prod {
  sql_table_name: dbo.Observeit_PROD ;;

  dimension: application_name {
    type: string
    sql: ${TABLE}.Application_name ;;
  }

  dimension_group: date_of_slide {
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
    sql: ${TABLE}.Date_of_Slide ;;
  }

  dimension: domain_name {
    type: string
    sql: ${TABLE}.Domain_Name ;;
  }

  dimension: emp_id__ {
    type: string
    sql: ${TABLE}.EMP_ID__ ;;
  }

  dimension: endpoint_name {
    type: string
    sql: ${TABLE}.Endpoint_Name ;;
  }

  dimension: filtered_by {
    type: string
    sql: ${TABLE}.Filtered_By ;;
  }

  dimension: login_name {
    type: string
    sql: ${TABLE}.Login_Name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: observeit {
    type: string
    sql: ${TABLE}.Observeit ;;
  }

  dimension: process_name {
    type: string
    sql: ${TABLE}.Process_name ;;
  }

  dimension: report_name_ {
    type: string
    sql: ${TABLE}.Report_Name_ ;;
  }

  dimension: row {
    type: string
    sql: ${TABLE}.Row ;;
  }

  dimension: total {
    type: string
    sql: ${TABLE}.Total ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }

  dimension: website_name {
    type: string
    sql: ${TABLE}.Website_name ;;
  }

  dimension: window_title {
    type: string
    sql: ${TABLE}.Window_title ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      name,
      domain_name,
      login_name,
      endpoint_name,
      application_name,
      website_name,
      process_name
    ]
  }
}
