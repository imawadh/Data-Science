use sales_database;
show databases;

use sales_database;
select * from sales;

-- Total sales ,avg sales , total quantity for each distint product id

select productid,sum(totalamount) 'Sum of Sales' ,
 avg(totalamount) 'Average of Sales' , 
 sum(quantity) 'Sum of Quantity' , 
 avg(quantity) 'Average of Quantity'  from sales
group by productid;

-- To apply condition on the grouped record we use having clause ....
select productid,sum(totalamount) 'Sum of Sales' ,
 avg(totalamount) 'Average of Sales' , 
 sum(quantity) 'Sum of Quantity' , 
 avg(quantity) 'Average of Quantity'  from sales
group by productid
having sum(totalamount)<700;