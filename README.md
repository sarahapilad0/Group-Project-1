Hospital Management Database
Overview
This project implements a Hospital Management System that facilitates the management of patients, doctors, appointments, and disease records. The system is designed to interact with a relational database, providing essential functionality such as data entry, appointment scheduling, and querying for upcoming appointments.
Features
1.	Patient Management:
•	Add new patient records.
•	Store details such as name, age, gender, and address.
2.	Doctor Management:
•	Add new doctor records.
•	Store details such as name, specialization, and contact information.
3.	Appointment Scheduling:
•	Schedule appointments between patients and doctors.
•	Track appointment dates and associated patient and doctor details.
4.	Disease Management:
•	Add new disease records.
•	Link diseases to specific medications and specialist doctors.
5.	Appointment Query:
•	Retrieve upcoming appointments for a specified doctor.
Database Schema
Tables:
1.	patients:  ID, Patient_Name, Date_Of_Birth, Address, Assigned_Doctor
2.	doctors: ID, Doctor_Name, Hospital_ID 
3.	appointments: ID, Patient_ID, Doctor_ID, Appointment_Date
4.	diseases: ID, Disease_Name, Medication_ID, Specialist_Doctor
5.	Medications:  ID, Medication_Name
6.	Hospitals: ID, Hospital_Name, Address, Bed_Size, Type, Emergency_Services, Year_of_Accreditation
7.	Lab_Results: ID, Patient_ID, Doctor_ID, Test_Type, Test_Result
8.	Prescriptions: ID, Medication_ID, Patient_ID, Doctor_ID, Date_Of_Prescription
Pseudocode
The pseudocode defines the main operations of the Hospital Management System, including:
•	Adding new patient and doctor records.
•	Scheduling appointments.
•	Viewing upcoming appointments for a doctor.
•	Managing diseases and linking them to medications.
Refer to the provided pseudocode for detailed logic and functionality.
Usage
Prerequisites:
•	A relational database (e.g., MySQL and MS-Access) with the provided schema.
•	A programming environment capable of executing SQL queries.
Steps:
1.	Database Setup:
•	Create a Database and add all the items into the each of the table that are created.
2.	System Execution:
•	Use the pseudocode or implement it in a programming language of your choice to interact with the database.
3.	Perform Operations:
•	Execute the system to manage hospital data, schedule appointments, and query details.
Example Queries
1.	Add a New Patient:
INSERT INTO patients (Name, Age, Gender, Address) VALUES ('John Doe', 35, 'Male', '123 Elm Street');
2.	Schedule an Appointment:
INSERT INTO appointments (Patient_ID, Doctor_ID, Appointment_Date) VALUES (1, 3, '2024-07-15');
3.	View Upcoming Appointments for a Doctor:
SELECT Appointment_Date, Patient_ID FROM appointments WHERE Doctor_ID = 3 AND Appointment_Date > CURDATE();
Future Enhancements
1.	Add user authentication and role-based access control.
2.	Implement a front-end interface for user-friendly operations.
3.	Integrate advanced querying features like patient history and analytics.
4.	Add notifications for upcoming appointments.
