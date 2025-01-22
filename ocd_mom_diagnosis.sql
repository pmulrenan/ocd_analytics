-- (3) Number of people diagnosed Month over Month
SELECT
	COUNT(Patient_ID) AS Count_of_Patients,
	DATE_FORMAT(OCD_Diagnosis_Date, '%Y-%m-01 00:00:00') as Month_Year
FROM
	ocd_patient_dataset
GROUP BY
	DATE_FORMAT(OCD_Diagnosis_Date, '%Y-%m-01 00:00:00')
ORDER BY Month_Year;