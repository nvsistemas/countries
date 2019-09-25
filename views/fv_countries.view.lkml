view: fv_countries {
  label: "Countries Info"
  sql_table_name: fivetran_panoply_csv.fv_countries ;;

#  dimension: _file {
#    type: string
#    sql: ${TABLE}._file ;;
#  }

#  dimension_group: _fivetran_synced {
#    type: time
#    timeframes: [
#      raw,
#      time,
#      date,
#      week,
#      month,
#      quarter,
#      year
#    ]
#    sql: ${TABLE}._fivetran_synced ;;
#  }

#  dimension: _line {
#    type: number
#    sql: ${TABLE}._line ;;
#  }

  dimension: Capital_Latitude {
    type: number
    sql: ${TABLE}.cap_lat ;;
  }

  dimension: cap_long {
    type: number
    sql: ${TABLE}.cap_long ;;
  }

  dimension: capital {
    type: string
    sql: ${TABLE}.capital ;;
  }

  dimension: city_proper_pop {
    type: number
    sql: ${TABLE}.city_proper_pop ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: continent {
    type: string
    sql: ${TABLE}.continent ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: fertility_rate {
    type: number
    sql: ${TABLE}.fertility_rate ;;
  }

  dimension: gov_form {
    type: string
    sql: ${TABLE}.gov_form ;;
  }

  dimension: indep_year {
    type: number
    sql: ${TABLE}.indep_year ;;
  }

  dimension: life_expectancy {
    type: number
    sql: ${TABLE}.life_expectancy ;;
  }

  dimension: local_name {
    type: string
    sql: ${TABLE}.local_name ;;
  }

  dimension: metroarea_pop {
    type: number
    sql: ${TABLE}.metroarea_pop ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: pop_id {
    type: number
    sql: ${TABLE}.pop_id ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }

  dimension: surface_area {
    type: number
    sql: ${TABLE}.surface_area ;;
  }

  dimension: urbanarea_pop {
    type: number
    sql: ${TABLE}.urbanarea_pop ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [country_name, local_name, name]
  }
}
