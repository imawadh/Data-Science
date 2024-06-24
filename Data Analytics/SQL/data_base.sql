create database salesdb;
use salesdb;
CREATE TABLE Sales_01 (
    `Order_Line` INT,
    `Order_ID` VARCHAR(255),
    `Order_Date` DATE,
    `Ship_Date` DATE,
    `Ship_Mode` VARCHAR(255),
    `Customer_ID` VARCHAR(255),
    `Product_ID` VARCHAR(255),
    `Sales` DECIMAL(10, 2),
    `Quantity` INT,
    `Discount` DECIMAL(10, 2),
    `Profit` DECIMAL(10, 2)
);

select * from sales_01;

CREATE TABLE Sales_02 (
    `Order_Line` INT,
    `Order_ID` VARCHAR(255),
    `Order_Date` DATE,
    `Ship_Date` DATE,
    `Ship_Mode` VARCHAR(255),
    `Customer_ID` VARCHAR(255),
    `Product_ID` VARCHAR(255),
    `Sales` DECIMAL(10, 2),
    `Quantity` INT,
    `Discount` DECIMAL(10, 2),
    `Profit` DECIMAL(10, 2)
);
select * from sales_01;

CREATE TABLE Sales_02 (
    `Order_Line` INT,
    `Order_ID` VARCHAR(255),
    `Order_Date` DATE,
    `Ship_Date` DATE,
    `Ship_Mode` VARCHAR(255),
    `Customer_ID` VARCHAR(255),
    `Product_ID` VARCHAR(255),
    `Sales` DECIMAL(10, 2),
    `Quantity` INT,
    `Discount` DECIMAL(10, 2),
    `Profit` DECIMAL(10, 2)
);

use salesdb;
CREATE TABLE Sales_02 (
    `Order_Line` INT,
    `Order_ID` VARCHAR(255),
    `Order_Date` DATE,
    `Ship_Date` DATE,
    `Ship_Mode` VARCHAR(255),
    `Customer_ID` VARCHAR(255),
    `Product_ID` VARCHAR(255),
    `Sales` DECIMAL(10, 2),
    `Quantity` INT,
    `Discount` DECIMAL(10, 2),
    `Profit` DECIMAL(10, 2)
);

select * from sales_02;

select * from sales_01;

SHOW VARIABLES LIKE 'secure_file_priv';

LOAD DATA INFILE '/ProgramData/MySQL/MySQL Server 8.3/Uploads/SalesforAWSandHadoop.csv'
INTO TABLE Sales_02
FIELDS TERMINATED BY ','  -- Assuming fields are comma-separated
ENCLOSED BY '"'          -- Assuming fields are enclosed by double quotes
LINES TERMINATED BY '\n' -- Adjust if using a different line ending
IGNORE 1 LINES           -- Skipping the header row
(
    `Order_Line`,
    `Order_ID`,
    @Order_Date,              -- Use variable for conversion
    @Ship_Date,               -- Use variable for conversion
    `Ship_Mode`,
    `Customer_ID`,
    `Product_ID`,
    `Sales`,
    `Quantity`,
    `Discount`,
    `Profit`
)
SET
    `Order_Date` = STR_TO_DATE(@Order_Date, '%m/%d/%Y'),  -- Convert to date
    `Ship_Date` = STR_TO_DATE(@Ship_Date, '%m/%d/%Y');    -- Convert to date

select * from sales_01;
select * from sales_02;

