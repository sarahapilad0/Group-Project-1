
-- 1. Prints a list of all doctors based at a particular hospital - Replace Specific Hospital Name:
SELECT doctors.Doctor_Name
FROM doctors
JOIN hospitals ON doctors.Hospital_ID = hospitals.ID
WHERE hospitals.Hospital_Name = 'Royal London Hospital';

-- 2. Prints a list of all prescriptions for a particular patient, ordered by the prescription date:
SELECT prescriptions.ID AS Prescription_ID, prescriptions.Medication_ID, prescriptions.Date_Of_Prescription, prescriptions.Doctor_ID, patients.Patient_Name
FROM prescriptions
JOIN patients ON prescriptions.Patient_ID = patients.ID
WHERE patients.Patient_Name = 'Grace Lee'
ORDER BY prescriptions.Date_Of_Prescription;

-- 3. Prints a list of all prescriptions that a particular doctor has prescribed:
SELECT prescriptions.ID AS Prescription_ID, prescriptions.Medication_ID, prescriptions.Patient_ID, prescriptions.Date_Of_Prescription, doctors.Doctor_Name
FROM prescriptions
JOIN doctors ON prescriptions.Doctor_ID = doctors.ID
WHERE doctors.Doctor_Name = 'Grace Lee';

-- 4. Prints a table showing all prescriptions ordered by a specific patient name alphabetically
SELECT prescriptions.Medication_ID, prescriptions.Doctor_ID, prescriptions.Date_Of_Prescription
FROM prescriptions
JOIN patients ON prescriptions.Patient_ID = patients.ID
WHERE patients.Patient_Name = 'Grace Lee'
ORDER BY patients.Patient_Name ASC;

-- 5. Adds a new patient to the database, including being registered with one of the doctors (will randomly allocate to a doctor). Insert new values: Patient Name, DoB and Address.: 
INSERT INTO patients (Patient_Name, Date_Of_Birth, Address, Assigned_Doctor)
VALUES ('Peter Sowton', '2002-01-09', '45 Old Street, Tiverton, TV3 JH9', (SELECT ID FROM doctors ORDER BY RAND() LIMIT 1));

-- 6. Modify the address details of an existing patient. Insert new address and specify patient name:
UPDATE patients
SET Address = '87 Mount Road, Tillerton, PH5 EK2'
WHERE Patient_Name = 'Grace Lee';

-- 7. Prints a list of all patient names and addresses for patients registered to doctors based at one particular hospital:
SELECT patients.Patient_Name, patients.Address AS Patient_Address
FROM patients
JOIN doctors ON patients.Assigned_Doctor = doctors.ID
JOIN hospitals ON doctors.Hospital_ID = hospitals.ID
WHERE hospitals.Hospital_Name = 'Royal London Hospital';

-- 8. Prints a list of all doctors based at teaching hospitals accredited between 2015-2024: 
SELECT doctors.Doctor_Name FROM doctors
JOIN hospitals ON doctors.Hospital_ID = hospitals.ID
WHERE hospitals.Type='Teaching' AND hospitals.Year_of_Accreditation BETWEEN 2015 and 2024;

-- 9. Lists all patients who may have a particular disease based on which medication they have been prescribed. Insert medication in 'Specific Medication Name'.:
SELECT patients.Patient_Name
FROM prescriptions
JOIN diseases ON prescriptions.Medication_ID = diseases.Medication_ID
JOIN patients ON prescriptions.Patient_ID = patients.ID
JOIN medications ON prescriptions.Medication_ID = medications.ID
WHERE diseases.Medication_ID = (SELECT ID FROM medications WHERE Medication_Name = 'Paracetamol 500mg Tablets');

-- 10. Lists all doctors who specialise in a particular disease. Replace 'Specific Disease.':
SELECT doctors.Doctor_Name FROM doctors
JOIN diseases ON doctors.ID = diseases.Specialist_Doctor
WHERE diseases.Disease_Name = 'Migraine';

-- 11. Lists all lab results for all patients over the age of 60:
SELECT lab_results.Patient_ID, lab_results.Test_Type, lab_results.Test_Result
FROM lab_results
JOIN patients ON lab_results.Patient_ID = patients.ID
WHERE TIMESTAMPDIFF(YEAR, patients.Date_Of_Birth, CURDATE()) >= 60;

-- 12. Prints a list of all appointments for a given patient:
SELECT a.ID AS Appointment_ID, d.Doctor_Name, a.Appointment_Date
FROM appointments a
JOIN doctors d ON a.Doctor_ID = d.ID
WHERE a.Patient_ID = (SELECT ID FROM patients WHERE Patient_Name = 'Grace Lee');

-- 13. Prints a list of all appointments for a given doctor: 
SELECT appointments.ID AS ID, patients.Patient_Name, appointments.Appointment_Date
FROM appointments
JOIN patients ON appointments.Patient_ID = patients.ID
WHERE appointments.Doctor_ID = (SELECT ID FROM doctors WHERE Doctor_Name = 'Dr. John Smith');

-- 14. Prints all prescriptions made from a particular hospital ordered alphabetically by the name of the medication:
SELECT medications.Medication_Name, doctors.Doctor_Name, patients.Patient_Name, hospitals.Hospital_Name
FROM prescriptions
JOIN medications ON prescriptions.Medication_ID = medications.ID
JOIN doctors ON prescriptions.Doctor_ID = doctors.ID
JOIN patients ON prescriptions.Patient_ID = patients.ID
JOIN hospitals ON doctors.Hospital_ID = hospitals.ID
WHERE hospitals.Hospital_Name = 'Royal London Hospital'
ORDER BY medications.Medication_Name;

-- 15. Prints a list of all lab results from all hospitals accredited between 2013-2020:
SELECT lab_results.Test_Result
FROM lab_results
JOIN patients ON lab_results.Patient_ID = patients.ID
JOIN doctors ON patients.Assigned_Doctor = doctors.ID
JOIN hospitals ON doctors.Hospital_ID = hospitals.ID
WHERE hospitals.Year_of_Accreditation BETWEEN 2013 AND 2020;

-- 16. Identifies which doctor has made the most prescriptions:
SELECT doctors.Doctor_Name, COUNT(prescriptions.ID) AS Total_Prescriptions
FROM doctors
JOIN prescriptions ON doctors.ID = prescriptions.Doctor_ID
GROUP BY doctors.ID
ORDER BY Total_Prescriptions DESC
LIMIT 1;

-- 17. Prints a list of all doctors at the hospital with the biggest size (number of beds):
SELECT doctors.Doctor_Name
FROM doctors
JOIN hospitals ON doctors.Hospital_ID = hospitals.ID
WHERE hospitals.Bed_Size = (SELECT MAX(Bed_Size) FROM hospitals);

-- 18. Lists all hospital names accredited prior to 2015 and have emergency services:
SELECT Hospital_Name
FROM hospitals
WHERE Year_of_Accreditation < 2015 AND Emergency_Services = 'Yes';

-- 19. Lists all patients registered with doctors based at hospitals with <400 beds:
SELECT patients.Patient_Name, doctors.Doctor_Name, hospitals.Hospital_Name
FROM patients
JOIN doctors ON patients.Assigned_Doctor = doctors.ID
JOIN hospitals ON doctors.Hospital_ID = hospitals.ID
WHERE hospitals.Bed_Size < 400;


