-- Temporary Table 
use employee_details;

-- Temporary 
CREATE TEMPORARY TABLE temp1 AS 
SELECT * FROM employee_details.employees;

select * from temp1;

SELECT *  FROM employee_details.employees;
SELECT CONNECTION_ID();


-- Regular Table
create table regularTable as select * from employee_details.employees;

