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

  join: fv_economies {
    type: left_outer
    sql_on: ${fv_countries.code} = ${fv_economies.code} ;;
    relationship: one_to_one
    }

}

# explore: fv_economies {}

# explore: fv_economies2010 {}

# explore: fv_economies2015 {}

# explore: fv_populations {}
