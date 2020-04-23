## Write a query to find the maximum total earnings for all employees 
## as well as the total number of employees who have maximum total earnings. 
## Then print these values as  space-separated integers.

SELECT SALARY*MONTHS AS EARNING, COUNT(EMPLOYEE_ID)
FROM EMPLOYEE
GROUP BY EARNING
ORDER BY EARNING DESC
LIMIT 1;



### 
FROM
WHERE
SELECT
ORDER BY
LIMIT