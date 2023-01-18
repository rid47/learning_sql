SELECT * FROM branch
SELECT * FROM employee

/*
INSERT INTO branch 
SELECT 6, 'California',NULL,NULL

UPDATE branch SET mgr_id=105 WHERE branch_id IN (5,6)

*/


-- find all branches and the names of their managers

-- join/inner join
SELECT branch.branch_name, employee.first_name manager_name

FROM branch
JOIN
employee
ON
branch.mgr_id = employee.emp_id

-- left join
SELECT branch.branch_name, employee.first_name manager_name
FROM branch
LEFT JOIN
employee
ON branch.mgr_id = employee.emp_id

-- right join
SELECT branch.branch_name, employee.first_name manager_name
FROM branch
RIGHT JOIN
employee
ON
branch.mgr_id=employee.emp_id


-- outer join
SELECT branch.branch_name, employee.first_name manager_name
FROM branch
FULL OUTER JOIN
employee
ON
branch.mgr_id=employee.emp_id

