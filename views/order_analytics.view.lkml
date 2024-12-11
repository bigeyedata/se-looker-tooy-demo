# The name of this view in Looker is "Order Analytics"
view: order_analytics {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "CONFORMED"."ORDER_ANALYTICS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Daily Sales" in Explore.

  dimension: daily_sales {
    type: number
    sql: ${TABLE}."DAILY_SALES" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."DT" AS TIMESTAMP_NTZ) ;;
  }
  measure: count {
    type: count
  }
}
