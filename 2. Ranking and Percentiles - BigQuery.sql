WITH earnings AS (
  SELECT
    fare_amount, tip_amount,
    fare_amount + tip_amount AS total_earnings
  FROM
    `searce-data-practice-emea.YellowTaxi.taxi`
)
SELECT
  *
FROM (
  SELECT
    fare_amount, tip_amount,
    RANK() OVER (ORDER BY total_earnings DESC) AS earnings_rank,
    PERCENT_RANK() OVER (ORDER BY total_earnings DESC) AS earnings_percent_rank
  FROM
    earnings
)
WHERE
  earnings_percent_rank <= 0.1;