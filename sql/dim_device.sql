SELECT DISTINCT
    device.deviceCategory AS device
  FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
  WHERE device.deviceCategory IS NOT NULL
  ORDER BY device ASC
