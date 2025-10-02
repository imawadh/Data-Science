show databases;
use sales_database;
show tables;
select * from products;


-- Group the data based on column category and price into different categories 
SELECT *,
    CASE 
        WHEN Category = 'Electronics' THEN 
            CASE 
                WHEN Price >= 100 THEN 'Premium Electronics'
                ELSE 'Affordable Electronics'
            END
        WHEN Category = 'Furniture' THEN 
            CASE 
                WHEN Price >= 100 THEN 'Premium Furniture'
                ELSE 'Affordable Furniture'
            END
        ELSE
            CASE
                WHEN Price >= 100 THEN 'Premium Accessories'
                ELSE 'Affordable Accessories'
            END
    END AS "PRICE and Category Categorisation"
FROM products;
