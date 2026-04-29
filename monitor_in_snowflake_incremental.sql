
select
    start_time,
    query_type,
    query_text
from snowflake.account_usage.query_history
where
    query_text ilike '%orders_stg__dbt_tmp%'
order by start_time desc;