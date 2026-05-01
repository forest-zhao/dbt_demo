{{
    config( materialized='table')
}}

with OFACT as 
(SELECT
    StoreID,
    SUM(Revenue) AS ActualSales
FROM
    {{ ref('orders_fact') }} 
GROUP BY STOREID
)

SELECT 
    OFACT.STOREID,
    OFACT.ActualSales,
    ST.SalesTarget

FROM OFACT 
JOIN
    {{ ref('salestargets') }} ST ON ST.StoreID = OFACT.StoreID

