connection: "panoply_trial"

# include all the views
include: "/views/**/*.view"

datagroup: countries_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: countries_default_datagroup

explore: fv_countries {
  label: "Countries"
  always_filter: {
    filters: {
      field: fv_economies.year
      value: "2015"
    }
    filters: {
      field: fv_populations.year
      value: "2015"
    }
  }

  join: fv_economies {
    view_label: "Countries & Economies"
    type: left_outer
    relationship: one_to_one
    sql_on: ${fv_countries.code} = ${fv_economies.code} ;;
        }

  join: fv_populations {
    type: left_outer
    relationship: one_to_one
    sql_on: ${fv_countries.code} = ${fv_populations.country_code} ;;
  }

}



# explore: fv_economies2010 {}

# explore: fv_economies2015 {}
