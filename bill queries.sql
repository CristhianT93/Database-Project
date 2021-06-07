/* List all bills */
SELECT * FROM bill;

/* Four Table Join: List all bills, including patient name, service name & price, supplement name & price, and total price */
SELECT b.billNo, p.patientFirstName, sv.serviceName, sv.servicePrice, s.supplementName, s.supplementPrice,
sv.servicePrice + s.supplementPrice AS totalPrice
FROM bill b, service sv, supplement s, patient p
WHERE b.serviceNo = sv.serviceNo AND b.supplementNo = s.supplementNo AND b.patientNo = p.patientNo;

/* Produce the bill(s) that Shoto owes with total price.  */
SELECT b.billNo, p.patientFirstName, sv.serviceName, sv.servicePrice, s.supplementName, s.supplementPrice, (sum(sv.servicePrice) + sum(s.supplementPrice)) AS totalPrice
FROM bill b, service sv, supplement s, patient p
WHERE b.serviceNo = sv.serviceNo AND b.supplementNo = s.supplementNo AND b.patientNo = p.patientNo AND p.patientNo = 'P7';