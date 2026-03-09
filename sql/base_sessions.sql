WITH max_date AS (
  SELECT MAX(PARSE_DATE('%Y%m%d', date)) AS max_dt
  FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
)

SELECT *
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE PARSE_DATE('%Y%m%d', date)
BETWEEN DATE_SUB((SELECT max_dt FROM max_date), INTERVAL 179 DAY)
AND (SELECT max_dt FROM max_date)