SELECT
    StoreID,
    SUM(Revenue) AS TotalRevenue
FROM
    {{ ref('orders_fact') }}  
GROUP BY 1

