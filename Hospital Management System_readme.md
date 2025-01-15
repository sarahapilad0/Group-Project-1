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

**Example Queries**

1. **Add a New Patient**:

   INSERT INTO patients (Name, Age, Gender, Address) VALUES ('John Doe', 35, 'Male', '123 Elm Street');

1. **Schedule an Appointment**:

   INSERT INTO appointments (Patient\_ID, Doctor\_ID, Appointment\_Date) VALUES (1, 3, '2024-07-15');

1. **View Upcoming Appointments for a Doctor**:

   SELECT Appointment\_Date, Patient\_ID FROM appointments WHERE Doctor\_ID = 3 AND Appointment\_Date > CURDATE();
## **Future Enhancements**
1. Add user authentication and role-based access control.
1. Implement a front-end interface for user-friendly operations.
1. Integrate advanced querying features like patient history and analytics.
1. Add notifications for upcoming appointments.
