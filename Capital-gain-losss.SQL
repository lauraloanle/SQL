# link: https://leetcode.com/problems/capital-gainloss/
# Write an SQL query to report the Capital gain/loss for each stock.
# The capital gain/loss of a stock is total gain or loss after buying and selling the stock one or many times.
# Return the result table in any order.


SELECT STOCK_NAME, SUM(PRICE) AS CAPITAL_GAIN_LOSS
FROM
(SELECT stock_name, CASE 
     WHEN OPERATION = 'BUY' THEN -PRICE
     WHEN OPERATION = 'SELL' THEN PRICE 
     END AS PRICE
FROM  STOCKS) TEMP
GROUP BY STOCK_NAME;