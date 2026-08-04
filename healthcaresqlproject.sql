SELECT * FROM healthcare.ocd_patient;
USE healthcare;

 
 SELECT 
 Gender,
 COUNT(`Patient ID`) AS Patient_count,
 ROUND(AVG(`Y-BOCS Score (Obsessions)`),2) AS avgbocs_score
 FROM ocd_patient
 GROUP BY Gender;
 
 SELECT Gender,
 COUNT(`Patient ID`) AS patient_count, 
 ROUND(
 COUNT(`Patient ID`)*100/
 (SELECT COUNT(*) FROM ocd_patient),
 2
 )AS Percentage
FROM ocd_patient
GROUP BY Gender;
 
 
 