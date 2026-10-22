SELECT name, area FROM cities WHERE area > 4000; -- FROM table->1, WHERE condition ->2, SELECT columns ->3

SELECT name, area FROM cities WHERE area = 8223;

SELECT name, area FROM cities WHERE area != 8223;

SELECT name, area FROM cities WHERE area <> 8223;

SELECT name, area FROM cities WHERE area BETWEEN 2000 and 4000

SELECT name, area FROM cities WHERE name IN ( 'Delhi', 'shanghai');

SELECT name, area FROM cities WHERE area NOT IN (8223,3043);

SELECT name, area FROM cities WHERE area NOT IN (8223,3043) AND name = ‘Delhi’;

SELECT name, area FROM cities WHERE area NOT IN (8223,3043)  OR name = ‘Delhi’ OR name = ‘shanghai’ ;

SELECT name, area FROM cities WHERE population / area > 6000; -- it could also contain multiple mathematical operations with OR and AND

—update 
UPDATE cities SET population = 39505000 WHERE name = ‘Tokyo’;

—DELETE 
DELETE FROM cities WHERE name = ‘ Shanghai’
