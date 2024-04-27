SELECT
  EXTRACT(DAY FROM "__time") AS pickup_day_of_week,
  EXTRACT(HOUR FROM "__time") AS pickup_hour,
  AVG(fare_amount / trip_distance) AS fare_per_mile
FROM "Yellow_Taxi_4Months"
WHERE "trip_distance" > 0
GROUP BY EXTRACT(DAY FROM "__time"), EXTRACT(HOUR FROM "__time")
ORDER BY EXTRACT(DAY FROM "__time"), EXTRACT(HOUR FROM "__time")
