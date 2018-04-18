-- get duplucate rows

SELECT id, column, count(*)
FROM target_table
GROUP BY id, column
HAVING count(*) > 1
