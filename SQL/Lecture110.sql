use sales_database;
select * from sales; 


-- all the agrregated values on the basis of distinct productid
select 
productid,
sum(quantity),
sum(totalamount),
avg(quantity),
avg(totalamount)
from sales 
group by productid
;
-- all the agrregate functions ignores the null values except count(*)

-- all the agrregated values on the basis of distinct productid and store id 
select 
productid, 
storeid,
sum(quantity),
avg(quantity),
sum(totalamount),
avg(totalamount)
from sales
group by productid, storeid 
order by productid, storeid;

select count(*) "Number of rows" from sales where not totalamount = 200.00 ;
select count(paymentmethod) from sales;
-- count(*) does not ignore null values but when a sepecific column is passed
-- as parameter to the count function it bagan ignoring the null values.

select count(totalamount) from sales;
select * from sales;


select count(distinct paymentmethod) from sales;
select distinct paymentmethod from sales;
-- -- distinct takes null values but when it comes to count,
-- -- it bagan ignroing the null values ... 


 