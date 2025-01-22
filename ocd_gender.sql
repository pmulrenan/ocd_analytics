-- (1) Count of Females vs Males that have OCD & Average Obsession Score by Gender
SELECT
	Gender,
	COUNT(Patient_ID) AS Count_of_Patients,
	ROUND(AVG(Y_BOCS_Score_Obsessions),2) AS AVG_Obsession_Score
FROM
	ocd_patient_dataset
GROUP BY
	Gender
ORDER BY
	Count_of_Patients;