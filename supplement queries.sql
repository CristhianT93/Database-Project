/* Show all supplements. */
SELECT * FROM supplement;

/* AGGREGATE: Display the most expensive supplement. */
SELECT *
FROM supplement
WHERE supplementPrice = (SELECT MAX(supplementPrice) FROM supplement);