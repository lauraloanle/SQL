#link: https://leetcode.com/problems/product-sales-analysis-iii/


SELECT product_id, year as first_year, quantity, price
FROM SALES 
WHERE (product_id, year) in
(SELECT product_id, MIN(YEAR) AS year FROM SALES group by product_id);