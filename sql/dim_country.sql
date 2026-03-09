SELECT DISTINCT
  geoNetwork.country AS country
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE geoNetwork.country IS NOT NULL