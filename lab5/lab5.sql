1)
SELECT region,SUM(population) AS region_population
FROM cities
GROUP BY region;

2)
SELECT region,SUM(population) AS region_population
FROM cities
GROUP BY region
HAVING COUNT(*) >=10;

3)
SELECT name, population
FROM cities
WHERE region IN (SELECT uuid
FROM regions
WHERE area_quantity >=5)
ORDER BY population DESC
LIMIT 5 OFFSET 10;

4)
SELECT region, SUM(population) AS region_population
FROM cities
WHERE population > 300000
GROUP by region;

5)
SELECT name, population
FROM cities
WHERE region IN (SELECT uuid
FROM regions
WHERE area_quantity <5) AND
population >150000 AND population <500000
;