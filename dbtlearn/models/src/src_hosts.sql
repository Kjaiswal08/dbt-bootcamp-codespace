with raw_hosts as(
    Select * from {{ source('airbnb', 'hosts') }}
    
)
Select ID as Host_id, NAME as host_name, IS_SUPERHOST, CREATED_AT, UPDATED_AT
from raw_hosts