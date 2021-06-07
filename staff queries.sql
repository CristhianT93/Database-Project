/* List all staff */
SELECT * FROM staff;

/* Who is the highest paid employee? */
SELECT staffFirstName, position, max(salary) AS maxSalary
FROM staff;