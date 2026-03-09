SELECT DISTINCT
  channelGrouping AS channel
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE channelGrouping IS NOT NULL
ORDER BY channel ASC
