view: fv_economies2010 {
  sql_table_name: fivetran_panoply_csv.fv_economies2010 ;;

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

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: gross_savings {
    type: number
    sql: ${TABLE}.gross_savings ;;
  }

  dimension: income_group {
    type: string
    sql: ${TABLE}.income_group ;;
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
