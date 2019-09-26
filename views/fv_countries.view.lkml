view: fv_countries {
  label: "Countries Data"
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

  dimension: capital_latitude {
    type: number
    sql: ${TABLE}.cap_lat ;;
  }

  dimension: capital_longitude {
    type: number
    sql: ${TABLE}.cap_long ;;
  }

  dimension: capital {
    type: string
    sql: ${TABLE}.capital ;;
  }

#  dimension: city_proper_pop {
#    type: number
#    sql: ${TABLE}.city_proper_pop ;;
#  }

  dimension: code {
    hidden: yes
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: continent {
    type: string
    sql: ${TABLE}.continent ;;
  }

  dimension: country_code {
    hidden: yes
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: gov_form {
    type: string
    sql: ${TABLE}.gov_form ;;
  }

  dimension: indep_year {
    type: number
    sql: ${TABLE}.indep_year ;;
  }

  dimension: local_name {
    type: string
    sql: ${TABLE}.local_name ;;
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

  measure: quantidade {
    type: count
    drill_fields: [country_name]
  }
}
