# Write a query to print the pattern P(20).

# for any sql query you need a table. Since, there is no given table in 
# the question, we have to use something else. Thankfully, sql comes with 
# INFORMATION_SCHEMA.TABLES built-in. So we can use it, even though it is 
# not needed to solve the question. It acts as dummy.

# Notice on: ';' after SET @number , '* ' instead of '*', @u := @ -1 (have a space between @u :=)


SET @number = 21;
SELECT REPEAT('* ', @number := @number -1)
FROM INFORMATION_SCHEMA.TABLES;