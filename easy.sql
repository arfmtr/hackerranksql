-- 1. Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
SELECT * FROM City
WHERE population > 100000 AND countrycode = 'USA';

-- 2. Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
SELECT name FROM City 
WHERE population > 120000 AND CountryCode = 'USA';

-- 3. Query all columns (attributes) for every row in the CITY table.
SELECT * FROM City;

-- 4. Query all columns for a city in CITY with the ID 1661.
SELECT * FROM City
WHERE ID = 1661;

-- 5. Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT * FROM City
WHERE CountryCode = 'JPN';

-- 6. Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT Name FROM City
WHERE CountryCode = 'JPN';

-- 7. Query a list of CITY and STATE from the STATION table.
SELECT city, state
FROM station;

-- 8. Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT city 
FROM station
WHERE id % 2 = 0;

-- 9. Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
SELECT (COUNT(city) - COUNT(DISTINCT city)) 
FROM STATION;

-- 10. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT city
FROM station
WHERE city REGEXP "^[aeiou].*";

--or u can use
SELECT DISTINCT city 
FROM station
WHERE city LIKE '[a,i,u,e,o]%'
--BECAUSE LIKE NOT SUPPORT IN MYSQL

-- 11. Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT city
FROM station
WHERE city REGEXP "[aeiou]$";

-- 12. Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
SELECT DISTINCT city
FROM station
WHERE city REGEXP "^[aeiou].*[aeiou]$";

-- 13. Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT city
FROM station
WHERE city NOT REGEXP "[aeiou]$";

-- 14. Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT city
FROM station
WHERE city NOT REGEXP "^[aeiou].*[aeiou]$";

-- 15. Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
SELECT name
FROM students 
WHERE marks > 75 
ORDER BY RIGHT (name, 3), ID ASC;

-- 16. Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
SELECT name
FROM employee 
ORDER BY name ASC;

-- 17. Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id.
SELECT name
FROM employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id ASC;

-- 18. Query a count of the number of cities in CITY having a Population larger than 100000.
SELECT COUNT(*)
FROM city
WHERE population > 100000;

-- 19. Query the total population of all cities in CITY where District is California.
SELECT SUM(population)
FROM city
WHERE district = 'California';

-- 20. Query the average population of all cities in CITY where District is California.
SELECT AVG(population)
FROM city
WHERE district = 'California';

-- 21. Query the average population for all cities in CITY, rounded down to the nearest integer.
SELECT ROUND(AVG(population))
FROM city;

-- 22. Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
SELECT SUM(population)
FROM city
WHERE countrycode = 'JPN';

-- 23. Query the difference between the maximum and minimum populations in CITY.
SELECT MAX(population) - MIN(population)
FROM city;

