SELECT
    CASE
        WHEN payment_type = 1 THEN 'Credit Card'
        ELSE 'Other Payment Type'
    END AS payment_type_description,
    AVG(tip_amount) AS "Average Tip"
FROM
    "Yellow_Taxi_4Months"
GROUP BY
    CASE
        WHEN payment_type = 1 THEN 'Credit Card'
        ELSE 'Other Payment Type'
    END
