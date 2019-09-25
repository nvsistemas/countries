view: fv_populations {
  sql_table_name: fivetran_panoply_csv.fv_populations ;;

  dimension: _file {
    type: string
    sql: ${TABLE}._file ;;
  }

  dimension_group: _fivetran_synced {
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
    sql: ${TABLE}._fivetran_synced ;;
  }

  dimension: _line {
    type: number
    sql: ${TABLE}._line ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: fertility_rate {
    type: number
    sql: ${TABLE}.fertility_rate ;;
  }

  dimension: life_expectancy {
    type: number
    sql: ${TABLE}.life_expectancy ;;
  }

  dimension: pop_id {
    type: number
    sql: ${TABLE}.pop_id ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
