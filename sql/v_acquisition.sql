SELECT 
    PARSE_DATE('%Y%m%d', date) AS date,
    device.deviceCategory AS device,
    geoNetwork.country AS country,
    channelGrouping AS channel,

    trafficSource.source AS source,
    trafficSource.medium AS medium,
    trafficSource.campaign AS campaign,

    SUM(totals.visits) AS sessions,
    COUNT(DISTINCT fullVisitorId) AS users

  FROM `project-489518.ga360_views.base_sessions`

  GROUP BY
    date,
    device,
    country,
    channel,
    source,
    medium,
    campaign