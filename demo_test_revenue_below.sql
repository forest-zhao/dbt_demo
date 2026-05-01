update ORDERS_FACT
set revenue=revenue *(-1) 
where orderid in ('800051','800078')

select * from orders_fact 
where orderid in ('800051','800078')