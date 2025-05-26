use sales_database;
select * from sales;

select paymentmethod ,sum(totalamount) from sales group by paymentmethod;