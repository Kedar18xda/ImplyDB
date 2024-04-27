SELECT
  TIME_EXTRACT("__time", 'DOW') AS day_of_week,
  EXTRACT(HOUR FROM "__time") AS hour_of_day,
  COUNT(*) AS total_trips
FROM "Yellow_Taxi_4Months"
GROUP BY TIME_EXTRACT("__time", 'DOW'), EXTRACT(HOUR FROM "__time")
ORDER BY total_trips DESC
LIMIT 5
