-- Get duplucate rows

SELECT id, column, count(*)
FROM target_table
GROUP BY id, column
HAVING count(*) > 1


-- Faster replacement for limit-offset(limit-offset makes fullscan)
-- useful for extraction of large datasets from postgresql

SELECT id, column1, column2, column3
FROM table_name
WHERE id > 1 and id <= 1 + step --here you have to find "step" programmatically 


