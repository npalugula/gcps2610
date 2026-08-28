# The name of this view in Looker is "Employee"
view: employee {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `finance_data.employee` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "ID" in Explore.

  dimension: id {
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: month1 {
    type: number
    sql: ${TABLE}.Month ;;
  }
  dimension: incoorect_sql {
    sql: SELECT * FROM INVALID SYNTAX ${TABLE}.salary ;;
    type: string
  }

  dimension: salary {
    type: number
    sql: ${TABLE}.salary ;;
  }
  dimension: salary1 {
    type: number
    sql: ${TABLE}.column_does_not_exist ;;
  }
  measure: count {
    type: count
  }
}
