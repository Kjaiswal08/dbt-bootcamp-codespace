select * FROM
{{ ref('fct_reviews') }} as rev left join {{ ref('dim_listings_cleansed') }} as lists on 
rev.listing_id=lists.listing_id where lists.created_at>rev.review_date Limit 10
--This is an example of singular test where the test pass if the sql doesnot return a single row.