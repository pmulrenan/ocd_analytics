-- (5) Most common Compulsion Type & its respective Average Obsession Score
SELECT
	Compulsion_Type,
	COUNT(Patient_ID) AS Count_of_Patients,
	ROUND(AVG(Y_BOCS_Score_Compulsions),2) AS AVG_Compulsion_Score
FROM
	ocd_patient_dataset
GROUP BY
	Compulsion_Type
ORDER BY
	Count_of_Patients DESC;