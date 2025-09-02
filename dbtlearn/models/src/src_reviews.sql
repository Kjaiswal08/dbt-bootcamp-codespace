with raw_reviews as(
    Select * from {{ source('airbnb', 'reviews') }}
)
Select LISTING_ID
, DATE as Review_date
, REVIEWER_NAME
, COMMENTS as Review_text
, SENTIMENT as Review_sentiment
from raw_reviews