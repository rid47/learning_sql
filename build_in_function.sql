-- Find the number of employee

Use ridwan;

SELECT COUNT(emp_id) FROM employee;


-- Find the number of employee who haver supervisor
Use ridwan;

SELECT COUNT(super_id) FROM employee;

-- Find the number of female employees born after 1970

SELECT COUNT(emp_id) FROM employee WHERE sex='F' AND birth_day > '1970-01-01'

-- Find the average of all employees salaries

SELECT AVG(salary) FROM employee;


-- Find the sum of all employees salaries

SELECT SUM(salary) FROM employee;

-- Find out how many males and females there are
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex;

-- Find the total sales of each salesman
SELECT emp_id,SUM(total_sales)
FROM works_with
GROUP BY emp_id
