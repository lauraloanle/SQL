## Write a query calculating the amount of error and round it up to 
## the next integer
## Link: https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=false

SELECT CEIL( AVG(SALARY) - AVG(REPLACE(SALARY, '0', '')))
FROM EMPLOYEES;