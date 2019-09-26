view: fv_economies {
  label: "Economies Data"
  sql_table_name: fivetran_panoply_csv.fv_economies ;;

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

  dimension: econ_id {
    type: number
    sql: ${TABLE}.econ_id ;;
  }

  dimension: exports {
    type: number
    sql: ${TABLE}.exports ;;
  }

  dimension: gdp_percapita {
    type: number
    sql: ${TABLE}.gdp_percapita ;;
  }

  dimension: gross_savings {
    type: number
    sql: ${TABLE}.gross_savings ;;
  }

  dimension: imports {
    type: number
    sql: ${TABLE}.imports ;;
  }

  dimension: income_group {
    type: string
    sql: ${TABLE}.income_group ;;
  }

  dimension: inflation_rate {
    type: number
    sql: ${TABLE}.inflation_rate ;;
  }

  dimension: total_investment {
    type: number
    sql: ${TABLE}.total_investment ;;
  }

  dimension: unemployment_rate {
    type: number
    sql: ${TABLE}.unemployment_rate ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: Total_GDP_percapita{
    type: sum
    sql: ${gdp_percapita} ;;
  }
}
