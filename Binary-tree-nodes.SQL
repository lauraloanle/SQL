#link: https://www.hackerrank.com/challenges/binary-search-tree-1/problem
# Write a query to find the node type of Binary Tree ordered by the value of the node. 

SELECT N,
    CASE WHEN P IS NULL THEN 'ROOT'
         WHEN N NOT IN (SELECT DISTINCT P FROM BST WHERE P IS NOT NULL) THEN 'LEAF'
     ELSE 'INNER'
END
FROM BST
ORDER BY N;     