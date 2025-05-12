create database Sales_Database;


show databases;
use sales_database;

-- Creating a table with more columns, including a varchar column
CREATE TABLE Sales (
    ProductID INT,
    SaleDate DATE,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    CustomerID INT,
    StoreID INT,
    SalespersonID INT,
    PaymentMethod VARCHAR(50)  -- New varchar column for payment method
);

-- Inserting more sample data (10 records), including NULL values
INSERT INTO Sales (ProductID, SaleDate, Quantity, TotalAmount, CustomerID, StoreID, SalespersonID, PaymentMethod)
VALUES 
(1, '2023-08-01', 10, 200.00, 101, 1, 201, 'Credit Card'),
(2, '2023-08-01', 5, 150.00, 102, 1, 202, 'Cash'),
(1, '2023-08-02', 8, 160.00, 103, 2, 203, 'Credit Card'),
(2, '2023-08-02', 7, 210.00, 104, 2, 204, 'Cash'),
(1, '2023-08-03', 6, 120.00, 105, 1, 201, NULL),              -- NULL value in PaymentMethod
(3, '2023-08-04', 12, 300.00, 106, 3, 205, 'Credit Card'),
(1, '2023-08-04', 5, 100.00, 107, 3, 206, 'Debit Card'),
(2, '2023-08-05', 9, 270.00, 108, 1, 202, NULL),              -- NULL value in PaymentMethod
(3, '2023-08-05', 15, 375.00, 109, 3, 207, 'Cash'),
(1, '2023-08-06', 7, 140.00, 110, 2, 203, 'Credit Card');

select * from sales;

create temporary table salesCopy as select * from sales; 

select * from salesCopy;

-- max on numerical columns 
select max(totalAmount) 'Max Amount' from salesCopy;
select max(totalAmount) as 'Max Amount' from salesCopy;

-- Min max on date 
select max(saledate) from salescopy;
select min(saledate) from salescopy;

-- Min and max in String Values 
select max(paymentmethod) from salescopy;
select min(paymentmethod) from salescopy; -- null values are ignored 


-- Maximum quantity sold for each product id 
select * from salescopy;
select productid, max(quantity) from salescopy group by productid;


select * from salescopy;
-- maximum total amount for all distinct date in sales columns
select saledate,max(totalAmount) from salescopy group by saledate;


SELECT SaleDate, SUM(TotalAmount) AS TotalSales
FROM salesCopy
GROUP BY SaleDate
ORDER BY TotalSales DESC
LIMIT 1;

