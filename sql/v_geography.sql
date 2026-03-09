SELECT
  PARSE_DATE('%Y%m%d', date) AS date,
  geoNetwork.continent AS continent,
  geoNetwork.country AS country,
  device.deviceCategory AS device,
  channelGrouping AS channel,

  SUM(totals.visits) AS sessions,
  COUNT(DISTINCT fullVisitorId) AS users

FROM `project-489518.ga360_views.base_sessions`

GROUP BY
  date,
  continent,
  country,
  device,
  channel;