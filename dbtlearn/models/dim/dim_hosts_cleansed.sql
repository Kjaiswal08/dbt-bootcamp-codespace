with src_hosts as(
    Select * from {{ref('src_hosts') }}
)
select Host_id, NVL(host_name,'Anonymous') as host_name, IS_SUPERHOST, CREATED_AT, UPDATED_AT from src_hosts