view: etl_jobs {
  sql_table_name: "PUBLIC"."ETL_JOBS"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }
  
  boop
  asdfasdf

  dimension_group: completed {
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
    sql: ${TABLE}."COMPLETED_AT" ;;
  }
  
  dimension: new_dim {
    boop
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
