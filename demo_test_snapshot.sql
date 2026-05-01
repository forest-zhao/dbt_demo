select * from dev_analyse_db.l2_processing.customers_history where customerid in ('99999','28422','28222')

select * from retail_oms.l1_landing.customers where customerid='28422'

insert into retail_oms.l1_landing.customers(CUSTOMERID, FIRSTNAME, LASTNAME, EMAIL, PHONE, ADDRESS, CITY, STATE, ZIPCODE, UPDATED_AT)
values
('99999', 'insert_new', 'insert_new', 'insert_new@outlook.com', '+1-406-250-9199x4380', '8335 Mark Lock', 'Houston', 'TX', '77001', current_timestamp())

update retail_oms.l1_landing.customers
set firstname='changed', updated_at=current_timestamp()
where customerid='28422'

delete from  retail_oms.l1_landing.customers
where customerid='28222'
