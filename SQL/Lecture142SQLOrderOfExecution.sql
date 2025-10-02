--  Order of execution of sql queries 

-- SELECT column_list
-- FROM table
-- WHERE condition
-- GROUP BY columns
-- HAVING condition
-- ORDER BY columns
-- LIMIT n;

-- The logical execution order is:
-- FROM – find the source tables.
-- JOIN / ON – combine rows if joins are used.
-- WHERE – filter rows (row-level filtering, before grouping).
-- GROUP BY – group rows.
-- HAVING – filter groups (after grouping).
-- SELECT – pick columns/expressions.
-- DISTINCT – remove duplicates.
-- ORDER BY – sort the result.
-- LIMIT / OFFSET – take the top N rows.