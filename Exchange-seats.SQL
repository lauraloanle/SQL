# link: https://leetcode.com/problems/exchange-seats/
# write a SQL query to output the result of changing seats for the adjacent students.

SELECT 
(CASE WHEN MOD(ID,2) != 0 AND ID != COUNTS THEN ID +1
      WHEN MOD(ID,2) != 0 AND ID =  COUNTS THEN ID
      ELSE ID - 1
      END) ID, STUDENT
FROM SEAT,
(SELECT COUNT(*) AS COUNTS FROM SEAT) TEMP
ORDER BY ID;

# different solution:

SELECT S1.ID, S2.STUDENT
FROM SEAT S2, SEAT S1
WHERE (S2.ID%2 = 1 AND S1.ID = S2.ID+1) 
   OR (S2.ID%2 = 0 AND S1.ID = S2.ID-1) 
   OR (S2.ID%2 = 1 AND S1.ID = S2.ID AND S2.ID = (SELECT MAX(ID) FROM SEAT))
;

# different solution:

SELECT 
CASE WHEN ID = (SELECT MAX(ID) FROM SEAT) THEN ID
      WHEN ID%2 = 0 THEN ID-1
      ELSE ID + 1
 END AS ID, STUDENT
 FROM SEAT
 ORDER BY ID;