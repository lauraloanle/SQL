# link: https://www.hackerrank.com/challenges/weather-observation-station-19/problem?fbclid=IwAR2gkgTQyCJP5w1mYoKUtu0F31qdRrn8OcPghXwp1qWNueeMAoWL8pA7YoI

# Query the Euclidean Distance between points P1 and P2 and format your 
# answer to display 4 decimal digits.

SELECT ROUND(SQRT(
            POWER((MAX(LAT_N)-MIN(LAT_N)),2) + 
            POWER((MAX(LONG_W)-MIN(LONG_W)),2)
            ),4)
FROM STATION;
