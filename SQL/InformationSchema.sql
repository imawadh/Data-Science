SELECT * FROM information_schema.schemata;

SELECT * FROM information_schema.tables 
WHERE table_schema = 'employee_details';


SELECT COLUMN_NAME, ORDINAL_POSITION, DATA_TYPE 
FROM information_schema.columns 
WHERE table_name = 'employees' 
AND table_schema = 'employee_details';
