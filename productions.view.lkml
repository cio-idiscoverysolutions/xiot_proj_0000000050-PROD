view: productions {
  sql_table_name: dbo.Productions ;;

  dimension_group: date {
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
    sql: ${TABLE}.Date ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: prod_id {
    type: number
    sql: ${TABLE}.ProdID ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
