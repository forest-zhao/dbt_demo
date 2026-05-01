{{
    config( materialized='table')
}}


SELECT
    OFACT.StoreID,
    SUM(OFACT.Revenue) AS ActualSales,
    SUM(ST.SalesTarget) AS TargetSales
FROM
    {{ ref('orders_fact') }} OFACT 
JOIN
    {{ ref('salestargets') }} ST ON ST.StoreID = OFACT.StoreID
GROUP BY 1
