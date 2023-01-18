-- Find any client who is LLC
SELECT * 
FROM client
WHERE client_name LIKE '%LLC';

-- Find any employee who born in october
SELECT * 
FROM employee
WHERE birth_day LIKE '____-10%';


-- Find any client who are schools

SELECT * 
FROM client
WHERE client_name LIKE '%school%'