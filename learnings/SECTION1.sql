CREATE TABLE cities(
  name VARCHAR(50),
  country VARCHAR(50),
  population INTEGER,
  area INTEGER 
 );

INSERT INTO cities(name, country, population, area)
VALUES ( 'Tokyo', 'Japan', 38505000, 8223)

INSERT INTO cities( name, country, population, area)
VALUES 
('Delhi', 'India', 28125000,2240)
('shanghai', 'China', 22125000, 4015)
('Sao Paulo', 'Brazil', 2093500, 3043)

SELECT * FROM cities

SELECT name, country FROM cities ;

SELECT name, population / area AS population_density FROM cities;

SELECT name || ', ' || country as Location FROM cities;  -- ||-> concat

SELECT CONCAT(UPPER(name), ', ', UPPER(country)) as Location FROM cities;

SELECT UPPER(CONCAT(name, ', ',country)) as Location FROM cities;