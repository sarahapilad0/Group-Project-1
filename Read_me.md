**Hospital Management Database**

**Overview**

This project implements a Hospital Management System that facilitates the management of patients, doctors, appointments, and disease records. The system is designed to interact with a relational database, providing essential functionality such as data entry, appointment scheduling, and querying for upcoming appointments.

**Features**

1. **Patient Management**:
   1. Add new patient records.
   1. Store details such as name, age, gender, and address.
1. **Doctor Management**:
   1. Add new doctor records.
   1. Store details such as name, specialization, and contact information.
1. **Appointment Scheduling**:
   1. Schedule appointments between patients and doctors.
   1. Track appointment dates and associated patient and doctor details.
1. **Disease Management**:
   1. Add new disease records.
   1. Link diseases to specific medications and specialist doctors.
1. **Appointment Query**:
   1. Retrieve upcoming appointments for a specified doctor.

**Database Schema**

**Main Files:**

1. **Hospital\_Database.sql**
1. **Hospital\_Database\_Access.accdb**
1. **MYSQL Queries.sql**

**Tables:**

1. **patients**:  ID, Patient\_Name, Date\_Of\_Birth, Address, Assigned\_Doctor
1. **doctors**: ID, Doctor\_Name, Hospital\_ID 
1. **appointments**: ID, Patient\_ID, Doctor\_ID, Appointment\_Date
1. **diseases**: ID, Disease\_Name, Medication\_ID, Specialist\_Doctor
1. **Medications**:  ID, Medication\_Name
1. **Hospitals:** ID, Hospital\_Name, Address, Bed\_Size, Type, Emergency\_Services, Year\_of\_Accreditation
1. **Lab\_Results:** ID, Patient\_ID, Doctor\_ID, Test\_Type, Test\_Result
1. **Prescriptions:** ID, Medication\_ID, Patient\_ID, Doctor\_ID, Date\_Of\_Prescription

**Pseudocode**

The pseudocode defines the main operations of the Hospital Management System, including:

- Adding new patient and doctor records.
- Scheduling appointments.
- Viewing upcoming appointments for a doctor.
- Managing diseases and linking them to medications.

Refer to the provided pseudocode for detailed logic and functionality.

**Usage**

**Prerequisites:**

- A relational database (e.g., MySQL and MS-Access) with the provided schema.
- A programming environment capable of executing SQL queries.

**Steps:**

1. **Database Setup**:
   1. Create a Database and add all the items into the each of the table that are created.
1. **System Execution**:
   1. Use the pseudocode or implement it in a programming language of your choice to interact with the database.
1. **Perform Operations**:
   1. Execute the system to manage hospital data, schedule appointments, and query details.

**Queries Used**
1. ## Printing the list of all Doctors at a particular hospital
1. ## Print a list of all prescriptions for a particular patient, ordered by prescription date
1. ## Prints a list of all prescriptions that a particular doctor has prescribed:
1. ## To print a table showing all prescriptions ordered by a specific patient name alphabetically
1. ## Adds a new patient to the database, including being registered with one of the doctors
1. ## Modify the address details of an existing patient. Insert new address and specify patient name
1. ## Prints a list of all patient names and addresses for patients registered to doctors based at one particular hospital
1. ## Prints a list of all doctors based at teaching hospitals accredited between 2015-2024
1. ## Lists all patients who may have a particular disease based on which medication they have been prescribed. Insert medication in 'Specific Medication Name'
1. ## Lists all doctors who specialise in a particular disease. Replace 'Specific Disease.
1. ## Lists all lab results for all patients over the age of 60
1. ## Prints a list of all appointments for a given patient
1. ## Prints a list of all appointments for a given doctor
1. ## Prints all prescriptions made from a particular hospital ordered alphabetically by the name of the medication
1. ## Prints a list of all lab results from all hospitals accredited between 2013-2020
1. ## Identifies which doctor has made the most prescriptions
1. ## Prints a list of all doctors at the hospital with the biggest size (number of beds)
1. ## Lists all hospital names accredited prior to 2015 and have emergency services:
1. ## Lists all patients registered with doctors based at hospitals with <400 beds
   ##
## **Future Enhancements**	
1. Add user authentication and role-based access control.
1. Implement a front-end interface for user-friendly operations.
1. Integrate advanced querying features like patient history and analytics.
1. Add notifications for upcoming appointments.
