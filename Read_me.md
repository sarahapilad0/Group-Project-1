## Hospital Management Database

# Overview

This project implements a Hospital Management System that facilitates
the management of patients, doctors, appointments, and disease records.
The system is designed to interact with a relational database, providing
essential functionality such as data entry, appointment scheduling, and
querying for upcoming appointments.

# Features

1.  **Patient Management**:

    -   Add new patient records.

    -   Store details such as name, age, gender, and address.

2.  **Doctor Management**:

    -   Add new doctor records.

    -   Store details such as name, specialization, and contact
        information.

3.  **Appointment Scheduling**:

    -   Schedule appointments between patients and doctors.

    -   Track appointment dates and associated patient and doctor
        details.

4.  **Disease Management**:

    -   Add new disease records.

    -   Link diseases to specific medications and specialist doctors.

5.  **Appointment Query**:

    -   Retrieve upcoming appointments for a specified doctor.

**Database Schema**

**Main Files:**

1.  **Hospital_Database.sql**

2.  **Hospital_Database_Access.accdb**

3.  **MYSQL Queries.sql**

**Tables:**

1.  **patients**: ID, Patient_Name, Date_Of_Birth, Address,
    Assigned_Doctor

2.  **doctors**: ID, Doctor_Name, Hospital_ID

3.  **appointments**: ID, Patient_ID, Doctor_ID, Appointment_Date

4.  **diseases**: ID, Disease_Name, Medication_ID, Specialist_Doctor

5.  **Medications**: ID, Medication_Name

6.  **Hospitals:** ID, Hospital_Name, Address, Bed_Size, Type,
    Emergency_Services, Year_of_Accreditation

7.  **Lab_Results:** ID, Patient_ID, Doctor_ID, Test_Type, Test_Result

8.  **Prescriptions:** ID, Medication_ID, Patient_ID, Doctor_ID,
    Date_Of_Prescription

**Pseudocode**

The pseudocode defines the main operations of the Hospital Management
System, including:

-   Adding new patient and doctor records.

-   Scheduling appointments.

-   Viewing upcoming appointments for a doctor.

-   Managing diseases and linking them to medications.

Refer to the provided pseudocode for detailed logic and functionality.

**Usage**

**Prerequisites:**

-   A relational database (e.g., MySQL and MS-Access) with the provided
    schema.

-   A programming environment capable of executing SQL queries.

**Steps:**

1.  **Database Setup**:

    -   Create a Database and add all the items into the each of the
        table that are created.

2.  **System Execution**:

    -   Use the pseudocode or implement it in a programming language of
        your choice to interact with the database.

3.  **Perform Operations**:

    -   Execute the system to manage hospital data, schedule
        appointments, and query details.

**Queries Used**

- Printing the list of all Doctors at a particular hospital

- Print a list of all prescriptions for a particular patient, ordered by prescription date

- Prints a list of all prescriptions that a particular doctor has prescribed:

- To print a table showing all prescriptions ordered by a specific patient name alphabetically

- Adds a new patient to the database, including being registered with one of the doctors

- Modify the address details of an existing patient. Insert new address and specify patient name

- Prints a list of all patient names and addresses for patients registered to doctors based at one particular hospital

- Prints a list of all doctors based at teaching hospitals accredited between 2015-2024

- Lists all patients who may have a particular disease based on which medication they have been prescribed. Insert medication in \'Specific Medication Name\'

- Lists all doctors who specialise in a particular disease. Replace \'Specific Disease.

- Lists all lab results for all patients over the age of 60

- Prints a list of all appointments for a given patient

- Prints a list of all appointments for a given doctor

- Prints all prescriptions made from a particular hospital ordered alphabetically by the name of the medication

- Prints a list of all lab results from all hospitals accredited between 2013-2020

- Identifies which doctor has made the most prescriptions

- Prints a list of all doctors at the hospital with the biggest size (number of beds)

- Lists all hospital names accredited prior to 2015 and have emergency services:

- Lists all patients registered with doctors based at hospitals with \<400 beds

