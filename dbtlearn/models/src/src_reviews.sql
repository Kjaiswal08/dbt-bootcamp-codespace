with raw_reviews as(
    Select * from AIRBNB.RAW.RAW_Reviews
)
Select LISTING_ID
, DATE as Review_date
, REVIEWER_NAME
, COMMENTS as Review_text
, SENTIMENT as Review_sentiment
from raw_reviews