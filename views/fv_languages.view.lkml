view: fv_languages {
  sql_table_name: fivetran_panoply_csv.fv_languages ;;

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

  dimension: lang_id {
    type: number
    sql: ${TABLE}.lang_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: official {
    type: yesno
    sql: ${TABLE}.official ;;
  }

  dimension: percent {
    type: number
    sql: ${TABLE}.percent ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
