# Given the CITY and COUNTRY tables, query the sum of the populations of 
# all cities where the CONTINENT is 'Asia'.

SELECT SUM(C1.POPULATION)
FROM CITY AS C1 JOIN COUNTRY AS C2 ON C1.COUNTRYCODE = C2.CODE
WHERE C2.CONTINENT = 'ASIA';
