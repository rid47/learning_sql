-- Find names of all employees who have
-- sold over 30,000 to a single client

SELECT employee.first_name, employee.last_name 
FROM employee
WHERE emp_id
IN
(
SELECT works_with.emp_id
FROM works_with
WHERE works_with.total_sales > 30000
);

-- Find all clients who are handled by the branch
-- that Micheal Scott manages



SELECT employee.emp_id, employee.first_name, employee.last_name,
	   branch.branch_id, branch.branch_name,
	   client.client_name
FROM employee
JOIN
branch
ON
employee.emp_id=branch.mgr_id
JOIN
client
ON client.branch_id=branch.branch_id
WHERE 
employee.first_name='Michael' AND employee.last_name='Scott'