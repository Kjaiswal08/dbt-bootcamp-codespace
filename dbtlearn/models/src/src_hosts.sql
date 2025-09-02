with raw_hosts as(
    Select * from AIRBNB.RAW.RAW_HOSTS
    
)
Select ID as Host_id, NAME as host_name, IS_SUPERHOST, CREATED_AT, UPDATED_AT
from raw_hosts