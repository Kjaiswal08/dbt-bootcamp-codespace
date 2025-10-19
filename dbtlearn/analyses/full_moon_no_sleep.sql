WITH fullmoon_reviews AS (
    SELECT * FROM {{ ref('full_view_reviews') }}
)
SELECT
    is_full_moon,
    review_sentiment,
    COUNT(*) as reviews
FROM
    fullmoon_reviews
GROUP BY
    is_full_moon,
    review_sentiment
ORDER BY
    is_full_moon,
    review_sentiment
--This query are not materialized and whenever we compile it through run/compile commands it generates
--a query which we can run in our database.