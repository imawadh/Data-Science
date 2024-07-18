create database deldb;
use deldb;
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    price_per_unit DECIMAL(10, 2),
    discount DECIMAL(10, 2)
);


INSERT INTO sales (sale_id, product_id, quantity, price_per_unit, discount) VALUES
(1, 101, 10, 15.00, 2.00),
(2, 102, 5, 25.00, 5.00),
(3, 103, 8, 30.00, 3.00),
(4, 104, 3, 45.00, 4.50);

select * from sales;
-- Calculate the total revenue before discount for each sale.

select sale_id,quantity,price_per_unit, (quantity*price_per_unit) as total_revenue from sales;
-- at the end select column_name comma is cumpusoryly be used;

-- Calculate the net revenue after applying the discount.

select sale_id,quantity,price_per_unit,discount,(quantity*price_per_unit-discount) 
as toatl_revenue_after_discount from sales;

-- Calculate the average price per unit for each sale after discount.

select sale_id,quantity 

