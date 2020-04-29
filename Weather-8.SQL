# Query the list of CITY names from STATION which have vowels 
# (i.e., a, e, i, o, and u) as both their first and last characters. 
# Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE SUBSTRING(CITY,1,1) IN ('E','I','A','O','U')
AND SUBSTRING(CITY,-1) IN ('E','I','A','O','U');

## OR 

SELECT DISTINCT CITY
FROM STATION
WHERE RIGHT(CITY,1) IN ('E','I','A','O','U')
AND LEFT(CITY,1) IN ('E','I','A','O','U');