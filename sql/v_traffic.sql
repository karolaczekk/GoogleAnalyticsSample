SELECT
  PARSE_DATE('%Y%m%d', date) AS date,
  geoNetwork.country AS country,
  device.deviceCategory AS device,
  channelGrouping AS channel,

  SUM(totals.visits) AS sessions,
  COUNT(DISTINCT fullVisitorId) AS users,
  SUM(totals.newVisits) AS new_users,
  SUM(totals.pageviews) AS pageviews,
  SUM(totals.timeOnSite) AS time_on_site

FROM `project-489518.ga360_views.base_sessions`

GROUP BY
  date,
  country,
  device,
  channel;
