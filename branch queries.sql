/* List all branches */
SELECT *
FROM branch;

/* AGGREGATE: List all Houston branches. */
SELECT COUNT(*) AS houstonCount
FROM branch
WHERE branchCity = 'Houston';

/* Three Table Join: For each branch, list staff who are assigned to a patient, including branch city and patients they treat. */
SELECT b.branchNo, b.branchCity, s.staffNo, staffFirstName, patientNo
FROM branch b, staff s, patient p
WHERE b.branchNo = s.branchNo AND s.staffNo = p.staffNo
ORDER BY b.branchNo, s.staffNo, patientNo;