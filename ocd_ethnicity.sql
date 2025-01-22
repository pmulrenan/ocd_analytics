-- (2) Count & Average Obsession Score by Ethnicities that have OCD
SELECT
	Ethnicity,
	COUNT(Patient_ID) AS Count_of_Patients,
	ROUND(AVG(Y_BOCS_Score_Obsessions),2) AS AVG_Obsession_Score
FROM
	ocd_patient_dataset
GROUP BY
	Ethnicity
ORDER BY
	Count_of_Patients;