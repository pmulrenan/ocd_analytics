-- (4) Most common Obsession Type & its respective Average Obsession Score
SELECT
	Obsession_Type,
	COUNT(Patient_ID) AS Count_of_Patients,
	ROUND(AVG(Y_BOCS_Score_Obsessions),2) AS AVG_Obsession_Score
FROM
	ocd_patient_dataset
GROUP BY
	Obsession_Type
ORDER BY
	Count_of_Patients DESC;