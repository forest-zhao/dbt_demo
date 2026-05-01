{{
    config( materialized='incremental',
            unique_key=['OrderID', 'OrderItemID'])
}}

SELECT
    OrderItemID,
    OrderID,
    ProductID,
    Quantity,
    UnitPrice,
    Quantity * UnitPrice AS TotalPrice,
    Updated_at,
    current_timestamp as dbt_updated_at
FROM
    {{ source('landing', 'orderitems') }}

{% if is_incremental() %}
where  Updated_at >= (select max(Updated_at) from {{ this }})
{% endif %}