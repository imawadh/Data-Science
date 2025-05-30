use sales_database;


select * from sales;
select * from sales where totalamount>=161;

select productid, sum(totalamount) 'Sum of Sales' 
from sales group by productid;

select productid, sum(totalamount) 'Sum of Sales' 
from sales group by productid
having sum(totalamount)<700;

select productid, sum(totalamount) 'Sum of Sales' 
from sales 
where TotalAmount>=161 
group by productid
having sum(totalamount)<700;
