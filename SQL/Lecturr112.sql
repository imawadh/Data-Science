use sales_database;
select * from sales;
select sum(totalamount) from sales;
select paymentmethod ,sum(totalamount) from sales group by paymentmethod;

select productid, paymentmethod,  sum(totalamount) as 'Sum of Sales' from sales 
group by  productid,paymentmethod 
order by productid;
