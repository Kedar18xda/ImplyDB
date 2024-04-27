SELECT '__time' AS event_time,
    fare_amount, tip_amount,
    (fare_amount + tip_amount) AS total_earnings,
    RANK() OVER w AS rank_value
FROM "Yellow_Taxi_4Months"
GROUP BY tip_amount, fare_amount, __time
WINDOW w AS (ORDER BY (fare_amount+tip_amount) DESC)
Limit 10
-- I had to set to edit the context and set "enableWindowing": true, as I was using Window function, 
-- but ultimately, it gave me this error - Not enough merge buffer memory to execute this query. 
-- Try enabling disk spilling by setting druid.query.groupBy.maxOnDiskStorage to an amount of bytes available on your machine for on-disk scratch files. 
-- Or, if you have additional off-heap memory available, consider increasing druid.processing.buffer.sizeBytes. 
-- See https://druid.apache.org/docs/latest/querying/groupbyquery.html#memory-tuning-and-resource-limits for details.
-----------------------------------------------------------------------------------------------------
-- Hence I used BigQuery instead to get the output of the query, which is also uploaded in this repo.
