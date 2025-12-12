create database hospital;
use hospital;
#Q1. Create the table Patients with the above structure.
create table Patients(patient_id int, name varchar(20), age int, gender varchar(20), disease varchar(20), doctor_id int);

#Q2. Create the Doctors table with the given columns.
create table Doctors(doctor_id int , doctor_name varchar(20), specialization varchar(20), department_id int);

# Q3. Create the Departments table using department_id as primary key.
create table Departments( department_id int, dept_name varchar(20));

# Que 4. Create the Appointments table linked to patient_id and doctor_id as foreign keys.
CREATE TABLE Appointments (appointment_id INT,patient_id INT,doctor_id INT,appointment_date DATE,fees INT);

# Q5. Create the Medical_Records table with record_id as the primary key.
CREATE TABLE Medical_Records (record_id INT,patient_id INT,diagnosis VARCHAR(200),bill_amount DECIMAL(10,2),admission_date DATE);

# Q6. Alter the Patients table to add a new column phone_number.
ALTER TABLE Patients ADD phone_number VARCHAR(15);

# Q7. Modify the data type of doctor_name in Doctors table.
ALTER TABLE Doctors MODIFY doctor_name VARCHAR(150);

#  Q8. Drop the column gender from Patients table.
ALTER TABLE Patients DROP COLUMN gender;

# Q9. Rename the table Medical_Records to Patient_Records.
RENAME TABLE Medical_Records to Patient_Records;

# Q10. Add a NOT NULL constraint to the disease column in Patients.
ALTER TABLE Patients MODIFY disease VARCHAR(100) NOT NULL;

# Q11. Insert one complete record into the Patients table.
INSERT INTO Patients(patient_id, name, age, disease, doctor_id, phone_number)
VALUES (1, 'Ashwini Saundore', 20, 'Fever', 2, '7248921737');

# Q12. Insert three doctors into the Doctors table.
INSERT INTO Doctors(doctor_id, doctor_name, specialization, department_id)
VALUES(1, 'Dr. Rashinkar', 'Cardiology', 1),
      (2, 'Dr. Verma', 'Orthopedics', 2),
      (3, 'Dr. Kale', 'Pediatrics', 3);


# Q13. Insert a new department called ‘Radiology’.
INSERT INTO Departments(department_id,dept_name)
VALUES (4, 'Radiology');

# Q14. Insert an appointment with today’s date and fees = 500.
insert into Appointments (appointment_id, patient_id, doctor_id, appointment_date, fees) values
(1, 1, 101, "2025-11-25", 500);


# Q15. Update the doctor_id of a patient whose patient_id = 3.
UPDATE Patients
SET doctor_id = 5
WHERE patient_id = 3;

SELECT *FROM PATIENTS

# Q16. Update the fees of all appointments to increase them by 10%.
update Appointments
set fees = fees * 1.10;

SELECT * FROM APPOINTMENTS;

# Q17. Delete the patient whose name is 'Rohan'
DELETE FROM Patients WHERE name = 'Rohan';

# Q18. Delete all appointments where fees are less than 300.
DELETE FROM Appointments WHERE fees < 300;

# Q19. Insert a medical record for patient_id = 2 with diagnosis = ‘Flu’.
INSERT INTO Patient_Records (record_id, patient_id, diagnosis, bill_amount, admission_date)
VALUES (1, 2, 'Flu', 1000, '2025-11-24');

SELECT *FROM PATIENT_RECORDS

 # Q20. Update bill_amount to 0 for all records where diagnosis = ‘Free Checkup’.
UPDATE Patient_Records
SET bill_amount = 0
WHERE diagnosis = 'Free Checkup';

#  Q21. Create a new user named hospital_admin.
CREATE USER 'hospital_admin@localhost' identified by 'root';

# Q22. Grant SELECT and INSERT privileges on Patients table to hospital_admin.
GRANT SELECT ON PATIENTS TO 'hospital_admin@localhost';

# Q23. Grant UPDATE privilege on Doctors table to hospital_admin.
GRANT UPDATE ON DOCTORS TO 'hospital_admin@localhost';

# Q24. Revoke INSERT privilege on Patients from hospital_admin.
REVOKE INSERT ON PATIENTS FROM 'hospital_admin@localhost';

#  Q25. Grant ALL privileges on Appointments table to hospital_admin.
GRANT ALL PRIVILEGES ON Appointments TO 'hospital_admin@localhost';

# Q26. Start a transaction and insert two new patient records.
INSERT INTO Patients VALUES (10, 'Rohini', 28, 'Cough', 1, '9123456789');
INSERT INTO Patients VALUES (11, 'Sneha', 40, 'Migraine', 2, '9234567891');

SELECT *FROM PATIENTS;

# Q27. Update the fees of appointment_id = 5, then rollback.
UPDATE Appointments
SET fees = 800
WHERE appointment_id = 5;
ROLLBACK;

#Q28. Delete a doctor record inside a transaction and then commit.
delete from doctors
where doctor_id = 101;
commit;

#Q29. Insert a medical record and save the change using SAVEPOINT.
insert into patient_records(record_id, patient_id, diagnosis, bill_amount, admission_date) values
(7, 3, 'Free Checkup', 200, "2025-11-22");
savepoint save_patient_record;
insert into patient_records(record_id, patient_id, diagnosis, bill_amount, admission_date) values
(11, 10, 'Fracture', 800, "2025-11-25");

#Q30. Undo the last operation after SAVEPOINT using ROLLBACK TO.
rollback to save_patient_record;

#Q31. Display all patients whose age > 50.
select * from patients where age > 50;

#Q32. List all doctors whose specialization = ‘Cardiology’.
select * from doctors where specialization = 'Cardiology';

#Q33. Show all appointments where fees > 1000.
select * from appointments where fees > 1000;

#Q34. Show patient name and disease where disease = ‘Diabetes’.
select name,disease from patients where disease = 'Diabetes ';

#Q35. Display all departments with department_id > 2.
select * from departments where department_id > 1002;

#Q36. Show details of appointments done on a specific date.
select * from appointments where appointment_date = "2025-11-24";

#Q37. List all medical records where bill_amount > 5000.
select * from patient_records where bill_amount > 500;

#Q38. Show all patients assigned to doctor_id = 4.
select name from patients where doctor_id = 104;

#Q39. Display appointments for patient_id = 10.
select appointment_date,patient_id from appointments where patient_id = 4;

#Q40. Show all records where diagnosis = ‘Fracture’.
select * from patient_records where diagnosis = 'Fracture';

### ASS- 2

# Q1. Display the distinct list of patient cities from the Patients table.
SELECT *FROM PATIENTS;
ALTER TABLE PATIENTS ADD CITY VARCHAR(50)
update Patients set city ='Pune' where patient_id = 1;
update Patients set city ='Mumbai' where patient_id = 10;
update Patients set city ='Goa' where patient_id = 11;
Select distinct city from Patients;

# Q2. Find all distinct doctor specializations.
select *from doctors;
select distinct specialization from doctors;

# Q3. Show distinct appointment statuses.
select *from appointments;
ALTER TABLE appointments add status varchar(50);
update appointments set status ='completed' where patient_id = 1;


# Q4. Display patients whose age is between 30 and 50.
select * from patients where age between 30 and 50;

# Q5. Display bills where total_amount is between 5000 and 15000.
select *from patient_records where bill_amount between 5000 and 15000;

# Q6. Select doctors whose experience is not between 5 and 15 years.
select *from doctors;
ALTER TABLE DOCTORS ADD EXPERIENCE VARCHAR(50);
update doctors set experience ='5 years' where doctor_id = 1;
update doctors set experience ='10 years' where doctor_id = 3;
update doctors set experience ='2 years' where doctor_id = 2;
select *from doctors where experience NOT BETWEEN 5 and 15; 

# Q7. Show appointments scheduled between '2024-01-01' and '2024-02-01'.
select *from appointments where appointment_date between '2024-01-01' and '2024-02-01';

# Q8. Display patients whose city is IN ('Pune','Mumbai','Delhi').
select *from patients;
select *from patients where city in('pune','mumbai','delhi')

# Q9. Display doctors whose specialization is IN ('Cardiology','Neurology').
select *from doctors where specialization IN ('Cardiology','Neurology');

# Q10. Show appointments where status is NOT IN ('Cancelled','Rescheduled').
select *from appointments;
select *from appointments where status NOT IN ('Cancelled','Rescheduled');

# Q11. Show departments where department_name is NOT IN ('ICU','Emergency').
select *from departments;
select *from departments where dept_name NOT IN ('ICU','Emergency')

# Q12. Display all patients ordered by age ascending.
SELECT *FROM Patients
ORDER BY age ASC;

# Q13. Display all doctors ordered by experience descending.
SELECT *FROM doctors
ORDER BY EXPERIENCE DESC;


# Q14. Show appointments ordered by appointment_date descending.
SELECT *FROM Appointments
ORDER BY appointment_date DESC;


# Q15. Display billing records ordered by total_amount ascending.
SELECT *FROM patient_records
ORDER BY bill_amount ASC;


# Q16. Count the number of patients in each city.
select city, count(patient_id) 
from Patients 
group by city;

# Q17. Show number of doctors in each specialization.
SELECT specialization, COUNT(doctor_id)
FROM Doctors
GROUP BY specialization;


# Q18. Show total billing amount generated by each patient.
select record_id, sum(bill_amount)
from Patient_Records
group by record_id;

# 19. Show number of appointments per doctor.
select doctor_id, sum(appointment_id)
from Appointments
group by doctor_id;

# Q20. Show departments where the number of doctors > 5.
select department_id, count(doctor_id) 
from doctors 
group by department_id 
having count(doctor_id) < 5;


# Q21. Show cities where patient count is greater than 10.
select city, count(patient_id) 
from patients 
group by city 
having count(patient_id) < 10;

select *from patients;
 
# Q22. Show doctors grouped by specialization where average experience is more than 7 years.
select specialization, avg(experience) from doctors group by specialization having avg(experience) > 7;


# Q23. Display the first 5 patients from the Patients table.
SELECT *FROM Patients
LIMIT 5;


# Q24. Display the first 10 appointments.
SELECT *FROM Appointments
LIMIT 10;


# Q25. Display 5 patients after skipping first 5.
SELECT *FROM Patients
LIMIT 5 
OFFSET 5;

# Q26. Display 10 billing records after skipping first 2.
SELECT *FROM patient_records
LIMIT 10 
OFFSET 2;


# Q27. Show the top 5 highest bill amounts.
SELECT *FROM patient_records
ORDER BY bill_amount DESC
LIMIT 5;


# Q28. Display doctor list with 10 records after skipping first 10.
SELECT *FROM Doctors
LIMIT 10 
OFFSET 10;


# Q29. Show appointments for doctors with specialization IN ('Orthopedic','Dermatology') ordered by appointment_date.
select *from appointments;
ALTER TABLE appointments ADD specialization varchar(50);
update appointments set specialization = 'orthopedic';
select *from appointments where specialization IN ('Orthopedic','Dermatology')
ORDER BY appointment_date;


# Q30. Group bills by payment_status and display groups having total count > 3.
alter table patient_records add payment_status varchar(20);

update patient_records set payment_status = "Paid" where record_id = 1;
update patient_records set payment_status = "Paid" where record_id = 2;
update patient_records set payment_status = "Paid" where record_id = 3;
update patient_records set payment_status = "Pending" where record_id = 4;
update patient_records set payment_status = "Pending" where record_id = 5;
update patient_records set payment_status = "Paid" where record_id = 6;
update patient_records set payment_status = "Pending" where record_id = 7;

select payment_status,count(record_id)
from patient_records
group by payment_status
having count(record_id) > 3;

# Q31. Show cities with patient count between 5 and 15.
select city, count(patient_id) 
from patients 
group by city 
having count(patient_id) between 1 and 15;


# Q32. Display top 3 patients who have the highest total billing amount.
select * from patient_records 
order by bill_amount desc
limit 3;

# Q33. Show departments ordered alphabetically, skip first 2 and display next 4.
SELECT *FROM Departments
ORDER BY dept_name
LIMIT 4 
OFFSET 2;


# Q34. Display all appointments where appointment_time is NOT BETWEEN '10:00' and '17:00',ordered by appointment_time.
select *from appointments;
ALTER TABLE appointments ADD appointment_time time;
update appointments set appointment_time = "10:00:00" where appointment_id = 1001;
update appointments set appointment_time = "12:00:00" where appointment_id = 1002;
update appointments set appointment_time = "08:00:00" where appointment_id = 1003;
update appointments set appointment_time = "05:00:00" where appointment_id = 1004;
update appointments set appointment_time = "13:00:00" where appointment_id = 1005;
update appointments set appointment_time = "15:00:00" where appointment_id = 1006;

select * from appointments where appointment_time not between '10:00' and '17:00'
order by appointment_time;


# Q35. Display the distinct cities of patients, ordered alphabetically, only first 3.
SELECT DISTINCT city
FROM Patients
ORDER BY city
LIMIT 3;

### ASS- 3

# Que 1. Display the distinct list of cities where patients live.
select distinct city 
from patients;

 # Que 2. Show distinct specializations of doctors ordered alphabetically.
 select distinct specialization
 from doctors
 order by specialization asc;
 
 # Que 3. Display distinct appointment statuses sorted in descending order.
 select distinct status 
 from appointments
 order by status desc;
 
 # Que 4. Find patients whose age is between 25 and 55.
 select name,age
 from patients
 where age  between 25 and 55;
 
 # Que 5. Display billing records where total_amount is between 7000 and 20000
select * from patient_records
where bill_amount between 7000 and 20000;

# Que 6. Show doctors whose experience is NOT BETWEEN 3 and 12 years.
select doctor_name from doctors
where experience NOT BETWEEN 3 and 12;
select* from doctors;

 # Que 7. Display appointments scheduled between '2024-03-01' and '2024-04-01'.
 select * from appointments 
 where status between '2024-03-01' and '2024-04-01';
 
 # Que 8. Show patients whose city is IN ('Pune','Chennai','Bangalore').
 select name,city
 from patients
 where city  IN ('Pune','Chennai','Bangalore');
 
 # Que 9. Show doctors whose specialization is IN ('Orthopedic','Dermatology','Cardiology')
 select doctor_name,specialization
 from doctors
 where specialization IN ('Orthopedic','Dermatology','Cardiology');
 
 # Que  10. Display appointments where status is NOT IN ('Cancelled','No Show').
select status from appointments
where status  NOT IN ('Cancelled','No Show');

# Que  11. Show departments where department_name is NOT IN ('ICU','Emergency','Radiology').
select dept_name
from departments
where dept_name NOT IN ('ICU','Emergency','Radiology');

#Que  12. Display all patients ordered by age descending.
select * from patients
order by age desc;

# Que  13. Show all doctors ordered by experience ascending.
select doctor_name,experience
from doctors
order by experience asc;

# Que  14. Display appointments ordered by appointment_date and appointment_time.
select appointment_date , appointment_time
from appointments
order by appointment_date , appointment_time;

# Que  15. Display billing records ordered by total_amount descending.
select * from patient_records
order by bill_amount desc;

# Que  16. Count number of patients in each city.
select city,count(patient_id)
from patients
group by city;

# Que  17. Count number of doctors in each specialization.
select doctor_name,count(specialization)
from doctors
group by doctor_name;

# Que  18. Show number of appointments for each status.
select appointment_id , count(*)status 
from appointments
group by appointment_id;

# Que  19. Show payment_status and total number of bills for each status.
select status,count(*) fees
from appointments
group by status;

# Que  20. Show specializations where average experience is more than 8 years.
select specialization,avg(experience)
from doctors
group by specialization
having avg(experience) > 8;

# Que  21. Display cities where patient count is greater than 20.
select city,count(*)patient_id
from patients
group by city
having patient_id > 20;

# Que  22. Show departments where the number of doctors is greater than 4.
select department_id,count(*)doctor_id
from doctors
group by department_id
having doctor_id > 4;

# Que  23. Show patients aged NOT BETWEEN 30 and 60.
select name,age
from patients
where age NOT BETWEEN 30 and 60;

# Que  24. Display the first 10 registered patients.
select * from patients
order by patient_id
limit 10;

# Que  25. Display the first 5 billing records with highest amounts.
select bill_amount from patient_records
order by bill_amount desc
limit 5;

# Que  26. Display 8 appointments after skipping the first 5.
select * from appointments
limit 8 offset 5;
select * from appointments;

# Que  27. Display 6 doctors after skipping the first 3.
select * from doctors
limit 6
offset 3;

# Que  28. Display top 3 patients with the highest age values.
SELECT *
FROM patients
ORDER BY age DESC
LIMIT 3;

# Que  29. Display the top 10 appointments with the earliest dates.
select * from appointments
order by appointment_date asc
limit 10;

# Que  30. Show 5 unique patient cities sorted in alphabetical order.
select name,city
from patients
order by city asc
limit 5;

# Que  31. Display cities where patient count is BETWEEN 5 and 15.
select city,count(*)patient_id
from patients
group by city
having patient_id BETWEEN 5 and 15;
 
# Que 32. Show statuses of appointments that appear more than 10 times.
select status, count(*)
from Appointments
group by status
having count(*) > 10;

# Que  33. Display specializations of doctors that appear more than 5 times.
SELECT specialization, COUNT(*) doctor_id
FROM doctors
GROUP BY specialization
HAVING COUNT(*) > 5;

# Que  34. Show the appointment_date values that occur more than once.
select status, count(*)
from Appointments 
group by status
having count(*) > 1 

#Que  35. Show floor numbers in departments that appear more than 2 times.
ALTER TABLE Departments ADD floor_number INT;
SELECT floor_number, COUNT(*)
FROM Departments
GROUP BY floor_number
HAVING COUNT(*) > 2;

# Que  36. Display gender groups where patient count is greater than 25.
ALTER TABLE Patients ADD gender VARCHAR(10);
SELECT gender, COUNT(*)
FROM Patients
GROUP BY gender
HAVING COUNT(*) > 25;


# Que  37. Show patients whose admission_date is NOT BETWEEN '2024-01-01' and '2024-02-01'.
SELECT *FROM Patient_Records
WHERE admission_date NOT BETWEEN '2024-01-01' AND '2024-02-01';


 # Que 38. Display departments located on floors IN (1, 2, 4, 6).
 SELECT *FROM Departments
WHERE floor_number IN (1, 2, 4, 6);
 
 # Que 39. Show the top 12 bills ordered by bill_date descending.
 ALTER TABLE Patient_Records ADD bill_date DATE;

 SELECT *FROM Patient_Records
ORDER BY bill_date DESC
LIMIT 12;
 
 # Que 40. Display cities of patients older than 60 and limit the result to 5.o
 SELECT city 
 FROM Patients
WHERE age > 60
LIMIT 5;
