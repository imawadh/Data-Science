use sales_database;

select * from table1;
select * from table2;


-- Create Employees_us table
CREATE TABLE Employees_US (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50)
);

-- Insert sample data into Employees table
INSERT INTO Employees_us (EmployeeID, FirstName, LastName, Department) VALUES
(1, 'Alice', 'Smith', 'Finance'),
(2, 'Bob', 'Johnson', 'Engineering'),
(3, 'Charlie', 'Williams', 'Marketing'),
(4, 'Diana', 'Brown', 'Finance'),
(5, 'Edward', 'Jones', 'Engineering'),
(6, 'Fiona', 'Garcia', 'Marketing'),
(7, 'George', 'Miller', 'Finance'),
(8, 'Hannah', 'Wilson', 'Engineering');

select *  from employees_us;

-- Wild cards lke statements
-- 1> % -> It may represent 0,1 multiple character
-- 2> _ -> It exactly represent only 1 charcter

-- Q1 :: Find the employess whose last name starts with 's'
select *  from employees_us where lastName like 's%';

-- Q2 :: Find the employess whose first name ends with 'a'
select * from employees_us where firstname like '%a';

-- Q3 :: Find the employess whose last name starts with 's'
select * from employees_us where department like '%eng%';

-- Q4 :: Find empoyeess whose last nsme is exctly 5 charcters
select * from employees_us where lastName like '_____';

-- Q5 :: Find EMployess whose firts nme starts with 'C' or 'D'
SELECT * FROM employees_us 
WHERE firstname LIKE 'c%' OR firstname LIKE 'd%';

SELECT * FROM employees_us 
WHERE firstname LIKE in ('c%','%d');
-- in is used with exact values only .... 

-- Q6 find the employees whose last name contains son
select * from employees_us where lastname like '%son%';

-- Q7 find employees whose first name conatins letter 'i' as the second charcter
select * from employees_us where firstname like '_i%';


-- Q8 find employees whose last name starts with any letter between 'A' and 'L'
select * from employees_us where lastname regexp '^[A-La-l]';

-- Q9 Find employees whose whose first name doesn't contain 'o'alter
select * from employees_us where firstname not like '%o%';
select * from employees_us where firstname not regexp 'o';


-- Q10 Find employees whose last name contains with 'a' and has exactly length of 5
select * from employees_us;
select * from employees_us where lastname regexp '^.{6}$' 
and lastname regexp 'a';
-- or
select * from employees_us where lastname regexp '^.{6}$' 
and lastname like '%a%';

-- Q11 Find employees whose department starts with 'Mar' and ends with 'ing'
select * from employees_us where department like 'Mar%ing';

-- Q12 Find employees whose firstname has 'a' in the third position
select * from employees_us where firstname like '__a%';

-- Q13 Find the employees whose last name starts with 'Br' or 'Bl'
select * from employees_us where lastname like 'Br%' or lastname like 'Bl%';

-- Q14 find employees whose first name starts with vowel 
select * from employees_us where firstname regexp '^[aeiouAEIOU]';


-- Q14 find employees whose first name does not start with vowel 
select * from employees_us where firstname regexp '^[^aeiouAEIOU]';



