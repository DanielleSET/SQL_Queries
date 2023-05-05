--1.Query all columns for all American cities in the CITY table with 
--populations larger than 100000.The CountryCode for America is USA.
SELECT *
FROM city
WHERE population > 100000 AND countrycode = 'USA'

--2.Query the list of CITY names starting with vowels (ie, a,e,i,o,or u)
--from STATION. Your result cannot contain duplicates.
SELECT DISTINCT city 
FROM station 
WHERE CITY 
LIKE 'A%'
OR CITY LIKE 'E%' 
OR CITY LIKE 'I%' 
OR CITY LIKE 'O%' 
OR CITY LIKE 'U%';

--3.Query the list of CITY names ending with vowels (a, e, i, o, u)
--from STATION. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION 
WHERE  LOWER(substr(city,LENGTH(city),LENGTH(city))) IN('a','e','i','o','u')

--4.Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both 
--their first and last characters. Your result cannot contain duplicates.
SELECT DISTINCT CITY 
FROM STATION 
WHERE (CITY LIKE 'A%' 
OR CITY LIKE 'E%' OR CITY LIKE 'I%' 
OR CITY LIKE 'O%' OR CITY LIKE 'U%') 
AND (CITY LIKE '%a' OR CITY LIKE '%e'
OR CITY LIKE '%i' OR CITY LIKE '%o'
OR CITY LIKE '%u') 
ORDER BY city;   

--5.Query the list of CITY names from STATION that do not start with
--vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY 
FROM STATION 
WHERE upper(SUBSTR(CITY,1,1)) NOT IN ('A','E','I','O','U');

--6.Query the list of CITY names from STATION that do not end with 
--vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION 
WHERE  UPPER(substr(city,LENGTH(city),LENGTH(city)))
NOT IN('a','e','i','o','u')

--7.Query the list of CITY names from STATION that either do not start
--with vowels or do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION 
WHERE LOWER(SUBSTR(CITY,1,1)) NOT IN ('a','e','i','o','u') 
OR LOWER(SUBSTR(CITY, LENGTH(CITY),1)) NOT IN ('a','e','i','o','u');

--8.Query the list of CITY names from STATION that do not start with 
--vowels and do not end with vowels. Your result cannot contain 
--duplicates.
SELECT DISTINCT CITY FROM STATION 
WHERE LOWER(SUBSTR(CITY,1,1)) NOT IN ('a','e','i','o','u') 
AND LOWER(SUBSTR(CITY,LENGTH(CITY),1)) NOT IN ('a','e','i','o','u');

--9.Query the Name of any student in STUDENTS who scored higher than Marks.
--Order your output by the last three characters of each name. If two
--or more students both have names ending in the same last three 
--characters (i.e.: Bobby, Robby, etc.), secondary sort them by 
--ascending ID.
SELECT NAME
FROM STUDENTS 
WHERE MARKS > 75
ORDER BY SUBSTR(NAME, LENGTH(NAME)-2, 3), ID ASC;

--10.Write a query that prints a list of employee names (i.e.: the
--name attribute) from the Employee table in alphabetical order.
SELECT NAME FROM EMPLOYEE ORDER BY NAME ASC

--11.Write a query that prints a list of employee names (i.e.: the
--name attribute) for employees in Employee having a salary greater
--than  per month who have been employees for less than  months.
--Sort your result by ascending employee_id.
SELECT NAME
FROM EMPLOYEE 
WHERE SALARY > 2000 AND MONTHS < 10 
ORDER BY EMPLOYEE_ID ASC;

--12.Query the difference between the maximum and minimum populations
--in CITY.
SELECT MAX(POPULATION) - MIN(POPULATION) FROM CITY;

--13.Find the difference between the total number of CITY entries in 
--the table and the number of distinct CITY entries in the table.
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;

--14.Query a count of the number of cities in CITY having a Population
--larger than 
SELECT COUNT(POPULATION) 
FROM CITY
WHERE POPULATION > 100000;

--15.Query the total population of all cities in CITY where District is
--California.
SELECT SUM(POPULATION) FROM CITY WHERE DISTRICT='CALIFORNIA';

--16.Query the average population of all cities in CITY where District 
--is California.
SELECT AVG(POPULATION) FROM CITY WHERE DISTRICT='CALIFORNIA';

--17.Query the average population for all cities in CITY, rounded down
--to the nearest integer.
SELECT FLOOR(AVG(POPULATION)) FROM CITY;

--18.Query the sum of the populations for all Japanese cities in CITY.
--The COUNTRYCODE for Japan is JPN.
SELECT SUM(POPULATION) FROM CITY WHERE COUNTRYCODE='JPN';

--19.Query the following two values from the STATION table:
--The sum of all values in LAT_N rounded to a scale of  decimal places.
--The sum of all values in LONG_W rounded to a scale of  decimal places.
SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2) FROM STATION;

--20.Query the sum of Northern Latitudes (LAT_N) from STATION having 
--values greater than 38.7880 and less than 137.2345 . Truncate your
--answer to 4 decimal places.
SELECT TRUNCATE(SUM(LAT_N),4) FROM STATION
WHERE LAT_N BETWEEN 38.7880 AND 137.2345;