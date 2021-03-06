USE world;
SHOW TABLES;
DESCRIBE city;
DESCRIBE country;
DESCRIBE countryLanguage;
SELECT * FROM city;
SELECT * FROM country;
SELECT * FROM countryLanguage;

SELECT COUNT(name) FROM city WHERE CountryCode = 'USA';

SELECT population, lifeExpectancy FROM country WHERE code = "ARG";

SELECT name, lifeExpectancy FROM country WHERE LifeExpectancy IS NOT NULL ORDER BY lifeExpectancy DESC LIMIT 1;

SELECT cn.name, ct.name FROM country cn JOIN city ct ON ct.id=cn.capital WHERE cn.code="ESP";    

SELECT cl.language FROM countryLanguage cl JOIN country cn ON cn.code=cl.countryCode WHERE region = "SouthEast Asia";

SELECT name FROM city WHERE name LIKE "F%" LIMIT 25;

SELECT COUNT(ct.name) FROM country cn JOIN city ct ON ct.countryCode=cn.code WHERE cn.code="CHN";

SELECT name, population FROM country WHERE population IS NOT NULL AND population !=0 ORDER BY population ASC LIMIT 1;

SELECT DISTINCT COUNT(name) FROM country;

SELECT name FROM country ORDER BY SurfaceArea DESC LIMIT 10;

SELECT name, population FROM city WHERE countryCode = "JPN" ORDER BY population DESC LIMIT 5;

SELECT name, code FROM country WHERE HeadOfState = "Elisabeth II";

SELECT name, population/SurfaceArea AS population_ratio FROM country WHERE population IS NOT NULL AND population != 0 ORDER BY population_ratio DESC LIMIT 10;

SELECT DISTINCT language FROM Countrylanguage ORDER BY language ASC;

SELECT name, GNP FROM country ORDER BY GNP DESC LIMIT 10;

SELECT DISTINCT language, COUNT(language) as Frequency
FROM CountryLanguage
GROUP BY Language
ORDER BY Frequency DESC
LIMIT 10;
 
SELECT name FROM country cn JOIN CountryLanguage cl ON cl.countryCode=cn.code WHERE cl.percentage > 50 AND cl.language="German";

SELECT name, LifeExpectancy FROM country WHERE LifeExpectancy IS NOT NULL AND LifeExpectancy ORDER BY LifeExpectancy ASC LIMIT 1;

SELECT governmentform, COUNT(governmentform) FROM country GROUP BY governmentform ORDER BY COUNT(governmentform) DESC LIMIT 3;

SELECT COUNT(IndepYear) FROM country WHERE IndepYear >= 0;