/* List all patients */
SELECT *
FROM patient;

/* How many patients are assigned to Nurse Ron?" */
SELECT count(*) AS patientsOfRon
FROM patient
WHERE staffNo = 'SN2';