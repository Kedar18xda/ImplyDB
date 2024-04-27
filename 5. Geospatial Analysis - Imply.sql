SELECT
  "PULocationID",
  "DOLocationID",
  MIN("trip_distance")
FROM "Yellow_Taxi_4Months"
WHERE "PULocationID" <> "DOLocationID" AND "trip_distance" <> '0'
GROUP BY 1, 2
