/* List all services */
SELECT * FROM service;

/* AGGREGATE: Display the least expensive service */
SELECT *
FROM service
WHERE servicePrice = (SELECT MIN(servicePrice) FROM service);

