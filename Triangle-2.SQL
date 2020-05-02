# Write a query to print the pattern P(20).

SET @TRI = 0 ;
SELECT REPEAT('* ', @TRI := @TRI + 1)
FROM INFORMATION_SCHEMA.TABLES
LIMIT 20;