1)
SELECT name
FROM cities
WHERE name Like "%ськ";

2)
SELECT name
FROM cities
WHERE name Like "%донец%";

3)
SELECT CONCAT(name,'(',region,')')
FROM cities
WHERE population > 100000
ORDER BY name;

4)
SELECT name, population/40000000*100 AS percentage 
FROM cities
ORDER BY population DESC
LIMIT 10;

5)
SELECT name, population/40000000*100 AS percentage 
FROM cities
WHERE population/40000000*100 >= 0.1
ORDER BY percentage DESC;