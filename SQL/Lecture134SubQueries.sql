show databases;
use employee_details;
show tables;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100)
);



CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);



-- Insert data into Customers table
INSERT INTO Customers (customer_id, customer_name, email)
VALUES 
(1, 'Alice Smith', 'alice@example.com'),
(2, 'Bob Johnson', 'bob@example.com'),
(3, 'Charlie Brown', 'charlie@example.com');

-- Insert data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, amount)
VALUES 
(101, 1, '2024-07-15', 250.00),
(102, 1, '2024-08-05', 300.00),
(103, 2, '2024-08-10', 150.00),
(104, 3, '2024-06-25', 100.00);

select * from customers;
select * from orders;


-- Select all the customers who ordered in the month of august
select * from customers
where customer_id in (select distinct customer_id from orders where order_date between '2024-08-01' and '2024-08-31');

-- Select all the customers who ordered in the month of not august
select * from customers
where customer_id  in (select distinct customer_id from orders where order_date not between '2024-08-01' and '2024-08-31');

select * from employees;

select avg(salary) from employees;
-- List of employees whose salary is greater than avergae salary 
select * from employees where salary>(select avg(salary) from employees);
