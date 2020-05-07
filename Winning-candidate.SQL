# link: https://leetcode.com/problems/winning-candidate/
# Write a sql to find the name of the winning candidate


SELECT C.NAME
FROM CANDIDATE C JOIN VOTE V 
ON C.ID = V.CANDIDATEID
WHERE V.ID = 1;