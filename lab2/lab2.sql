1)
SELECT name
FROM cities
WHERE population > 1000000;

2)
SELECT name,region,population
FROM cities
WHERE region = "W" OR region = "E"
ORDER BY population;

3)
SELECT name,region,population
FROM cities
WHERE region IN ("S","N","C") AND population > 50000;

4)
SELECT name,region,population
FROM cities
WHERE region IN ("W","N","E") AND population > 150000 AND population < 350000
LIMIT 20;

5)
SELECT name,region,population
FROM cities
WHERE region != "W" AND region != "E"
ORDER BY population DESC 
LIMIT 10 OFFSET 10;
