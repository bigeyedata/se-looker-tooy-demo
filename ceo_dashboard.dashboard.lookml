---
- dashboard: ceo_dashboard
  title: CEO Dashboard
  layout: newspaper
  description: ''
  preferred_slug: 1CUsv3UMxbu2HEZh5taC8y
  elements:
  - title: Daily Product Deltas
    name: Daily Product Deltas
    model: ecommerce_analytics
    explore: price_reporting
    type: table
    fields: [price_reporting.hour_date, price_reporting.delta, price_reporting.product_type]
    limit: 500
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Daily Price Seasonality
    name: Daily Price Seasonality
    model: ecommerce_analytics
    explore: order_analytics
    type: table
    fields: [order_analytics.dt_date, order_analytics.daily_sales]
    limit: 500
    row: 0
    col: 8
    width: 8
    height: 6
