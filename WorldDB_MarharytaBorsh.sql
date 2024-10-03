-- Task 3
SELECT COUNT(*) AS num_of_cities
FROM city
WHERE countrycode = 'USA';

-- Task 4
SELECT population, lifeexpectancy
FROM country
WHERE code = 'ARG';

-- Task 5
SELECT name, lifeexpectancy
FROM country
ORDER BY lifeexpectancy DESC
LIMIT 1;

-- Task 6
SELECT name
FROM city
WHERE name LIKE 'F%'
LIMIT 25;

-- Task 7 
SELECT id, name, population
FROM city
LIMIT 10;

-- Task 8
SELECT name, population
FROM city
WHERE population > 2000000;

-- Task 9 
SELECT name
FROM city
WHERE name LIKE 'Be%';

-- Task 10
SELECT name, population
FROM city
WHERE population BETWEEN 500000 AND 1000000;

-- Task 11
SELECT name, population
FROM city
ORDER BY population ASC
LIMIT 1;

-- Task 12
SELECT c.name AS country, c.population, cl.language
FROM country c
JOIN countrylanguage cl ON c.code = cl.countrycode
WHERE c.name = 'Switzerland';

-- Task 13
SELECT c.name AS capital
FROM city c
JOIN country co ON c.id = co.capital
WHERE co.code = 'ESP';

-- Task 14
SELECT name, lifeexpectancy
FROM country
ORDER BY lifeexpectancy DESC
LIMIT 1;

-- Task 15
SELECT c.name
FROM city c
JOIN country co ON c.countrycode = co.code
WHERE co.continent = 'Europe';

-- Task 16
SELECT name, population
FROM city
ORDER BY population DESC
LIMIT 1;

-- Primary key in country table
ALTER TABLE country ADD PRIMARY KEY (Code);

-- Primary key in city table
ALTER TABLE city ADD PRIMARY KEY (ID);

-- Composite primary key in countrylanguage table
ALTER TABLE countrylanguage ADD PRIMARY KEY (CountryCode, Language);

-- Foreign key in city table
ALTER TABLE city ADD CONSTRAINT fk_country
FOREIGN KEY (CountryCode) REFERENCES country(Code);

-- Foreign key in countrylanguage table
ALTER TABLE countrylanguage ADD CONSTRAINT fk_countrylanguage
FOREIGN KEY (CountryCode) REFERENCES country(Code);











