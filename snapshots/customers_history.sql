{% snapshot customers_history %}

{{
    config(
      target_schema='L2_PROCESSING',
      unique_key='CUSTOMERID',
      strategy='timestamp', 
      updated_at='updated_at',
      invalidate_hard_deletes=True
      
    )
}}

--strategy='check',check_cols=(['',''])
-- invalidate_hard_deletes=True
SELECT 
    CustomerID,
    FirstName,
    LastName,
    Email,
    Phone,
    Address,
    City,
    State,
    ZipCode,
    Updated_at,
    CONCAT(FirstName, ' ', LastName) AS CustomerName
FROM {{ source('landing', 'customers') }}

{% endsnapshot %}