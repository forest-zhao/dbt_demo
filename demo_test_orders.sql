select * from retail_oms.l1_landing.orders

INSERT INTO retail_oms.l1_landing.orders ("ORDERID", "ORDERDATE", "CUSTOMERID", "EMPLOYEEID", "STOREID", "STATUS", "UPDATED_AT") 
VALUES
(999999, '2026-05-01', '22531', 509921, '1506', '02', current_timestamp())

update retail_oms.l1_landing.orders
set status='03',updated_at=current_timestamp()
where orderid='800061'

select * from dev_analyse_db.l2_processing.orders_stg where orderid in ('999999','800061')