-- find all employee

SELECT * FROM employee;


-- find all employee order by salary

SELECT * FROM employee ORDER BY salary DESC


-- find all employee order by sex then name

SELECT * FROM employee ORDER BY sex,first_name, last_name

-- find first 5 employee

SELECT TOP 5 * FROM employee

-- find first_name and last_name of all employee

SELECT first_name, last_name FROM employee

-- find fore_name and sur_name of all employee

SELECT first_name AS forename , last_name AS surname FROM employee;

-- find different value in a column

SELECT DISTINCT sex FROM employee