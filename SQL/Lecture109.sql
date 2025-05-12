use sales_database;

select * from sales;

select min(quantity) from sales;

-- show minimum totalamount for each storeid
select storeid, min(totalamount) from sales group by StoreID;


