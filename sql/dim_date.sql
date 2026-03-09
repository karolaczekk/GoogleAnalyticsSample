WITH max_date AS (
  SELECT MAX(PARSE_DATE('%Y%m%d', date)) AS max_dt
  FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
)

SELECT
  day AS date,
  EXTRACT(YEAR FROM day) AS year,
  EXTRACT(MONTH FROM day) AS month,
  EXTRACT(DAY FROM day) AS day_of_month

FROM max_date
CROSS JOIN UNNEST(
  GENERATE_DATE_ARRAY(
    DATE_SUB(max_dt, INTERVAL 179 DAY),
    max_dt
  )
) AS day
ORDER BY date