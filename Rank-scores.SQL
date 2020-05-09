#link: https://leetcode.com/problems/rank-scores/

# Write a SQL query to rank scores. If there is a tie between two scores, 
# both should have the same ranking. Note that after a tie, the next ranking 
# number should be the next consecutive integer value. In other words, 
# there should be no "holes" between ranks.

SELECT Score,DENSE_RANK() OVER(ORDER BY Score DESC) AS Rank
FROM Scores


#OR ANOTHER WAY
SELECT A.SCORE, (SELECT COUNT(DISTINCT SCORE) FROM SCORES 
                 WHERE SCORE >= A.SCORE) AS RANK
FROM SCORE A
ORDER BY A.SCORE DESC;


#OR ANOTHER WAY

SELECT A.SCORE, COUNT(DISTINCT B.SCORE) AS RANK 
FROM SCORES A, (SELECT DISTINCT SCORE FROM SCORES) B
WHERE A.SCORE >= B.SCORE
GROUP BY A.ID
ORDER BY A.SCORE DESC;

