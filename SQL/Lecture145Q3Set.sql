

use SQLBasicsQuestions;

-- Create the Customers table
drop table Customers;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Country VARCHAR(50)
);

-- Insert data into Customers table
INSERT INTO Customers (CustomerID, CustomerName, Country)
VALUES 
(1, 'Alice', 'USA'),
(2, 'Bob', 'UK'),
(3, 'Charlie', 'Canada'),
(4, 'David', 'USA'),
(5, 'Eve', 'Australia');

-- Create the Orders table
drop table Orders;
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    ProductID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert data into Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, ProductID)
VALUES 
(101, 1, '2024-08-01', 1001),
(102, 1, '2024-08-03', 1002),
(103, 2, '2024-08-04', 1001),
(104, 3, '2024-08-05', 1003),
(105, 5, '2024-08-06', 1004);

-- Create the Products table
drop table products;
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Insert data into Products table
INSERT INTO Products (ProductID, ProductName, Price)
VALUES 
(1001, 'Laptop', 1000),
(1002, 'Smartphone', 700),
(1003, 'Tablet', 500),
(1004, 'Headphones', 200),
(1005, 'Smartwatch', 300);

select * from products;
select * from customers;
select * from orders;



-- 1) Write an SQL query to find the names of customers who have placed an order.
select * from orders;
select * from customers;
-- Using Sub Queries  
select CustomerName from customers where customerid in (select distinct customerId from orders); 

-- Using Join
select distinct c.customerName from customers c inner join orders o on c.customerid=o.customerid; 

-- 2) Find the list of customers who have not placed any orders.

-- Using Anti join 
select distinct c.customerName from customers c left join orders o on c.customerid = o.customerid where o.customerid is null;


-- 3) List all orders along with the product name and price.
select * from products;
select * from orders;



-- 4) Find the names of customers and their orders, including customers who haven't placed any orders.


-- 5) Retrieve a list of products that have never been ordered.


-- 6) Find the total number of orders placed by each customer.



-- 7) Display the customers, the products they've ordered, and the order date. Include customers who haven't placed any orders.




