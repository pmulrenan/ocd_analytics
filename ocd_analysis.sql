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


-- (3) Number of people diagnosed Month over Month
SELECT
	COUNT(Patient_ID) AS Count_of_Patients,
	DATE_FORMAT(OCD_Diagnosis_Date, '%Y-%m-01 00:00:00') as Month_Year
FROM
	ocd_patient_dataset
GROUP BY
	DATE_FORMAT(OCD_Diagnosis_Date, '%Y-%m-01 00:00:00')
ORDER BY Month_Year;


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