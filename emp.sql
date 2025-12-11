create database office;
use office;
### Ass - 1
CREATE TABLE EMPLOYEE(emp_id INT,emp_name VARCHAR(50), emp_age INT, emp_dept VARCHAR(50),emp_sal INT, emp_city VARCHAR(50), emp_desg VARCHAR(50),emp_performance VARCHAR(50),emp_activitystatus VARCHAR(50), emp_dateofjoining date);
INSERT INTO EMPLOYEE(emp_id,emp_name,emp_age,emp_dept,emp_sal,emp_city,emp_desg,emp_performance,emp_activitystatus,emp_dateofjoining)
VALUES(1, 'Ashwini Saundore', 21, 'IT', 55000, 'Pune', 'Developer', 8, 'Active', '2024-03-15'),
      (2, 'Kiran Rasal', 26, 'HR', 75000, 'Mumbai', 'HR Manager', 9, 'Active', '2023-01-01'),
      (3, 'Amol Anap', 27, 'Finance', 60000, 'Mumbai', 'Accountant', 5, 'InActive', '2022-05-20'),
      (4, 'Vaishnavi Pund', 25, 'IT', 75000, 'Delhi', 'Team Lead', 9, 'Active', '2025-02-11'),
      (5, 'Karan Mhais', 28, 'Sales', 45000, 'Mumbai', 'Sales Executive', 4, 'Active', '2021-12-02'),
      (6, 'Neha Nigde', 26, 'IT', 52000, 'Bangalore', 'Tester', 7, 'Active', '2024-06-18'),
      (7, 'Dipak Rasal', 30, 'Operations', 50000, 'Mumbai', 'Ops Analyst', 6, 'Active', '2020-01-15'),
      (8, 'Bhagwan Raut', 33, 'Marketing', 70000, 'Chennai', 'Marketing Lead', 9, 'Active', '2023-04-21'),
      (9, 'Sachin Salunke', 32, 'Finance', 64000, 'Mumbai', 'Sr Accountant', 5, 'Inactive', '2019-10-09'),
      (10, 'Shrushti Shelke', 25, 'HR', 40000, 'Pune', 'HR Executive', 8, 'Active', '2024-01-12'),
      (11,'Saurabh Mehetre',32,'Finance',55000,'Pune','Accountant',7,'Active','2021-03-19'),
      (12,'Arti Vishwase',30,'HR',48000,'Mumbai','HR Officer',6,'Active','2020-11-11'),
      (13,'Rutuja Hardas',27,'IT',64000,'Chennai','Developer',8,'Active','2024-01-05'),
      (14,'Pooja Sant',28,'Sales',42000,'Delhi','Sales Executive',5,'Active','2023-07-17'),
      (15,'Mayuri Sinare',34,'IT',78000,'Mumbai','Senior Developer',9,'Inactive','2019-05-09'),
      (16,'Akanksha Joshi',37,'Finance',72000,'Bangalore','Finance Manager',8,'Active','2022-02-25'),
      (17,'Sakshi Sherkar',29,'Marketing',41000,'Hyderabad','Marketing Executive',6,'Inactive','2023-12-12'),
      (18,'Pratik Pujari',25,'IT',61000,'Pune','Developer',7,'Active','2024-04-14'),
      (19,'Harshita Khairnar',28,'Sales',38000,'Mumbai','Sales Executive',4,'Active','2022-06-22'),
      (20,'Sagar Gadekar',33,'IT',67000,'Delhi','Developer',8,'Active','2021-12-03'),
      (21,'Shital Wakchaure',31,'HR',49000,'Chennai','HR Executive',6,'Active','2020-08-14'),
      (22,'Nikita Vishwas',36,'Finance',76000,'Bangalore','Finance Lead',9,'Active','2018-10-20'),
	  (23,'Amit Mahadik',29,'Marketing',43000,'Pune','Marketing Executive',7,'Active','2024-03-03'),
      (24,'Mayur Pund',27,'Sales',37000,'Mumbai','Sales Executive',3,'Inactive','2023-11-19'),
      (25,'Swati Rashinkar',26,'IT',62000,'Hyderabad','Developer',8,'Active','2024-01-22'),
      (26,'Payal Salunke',32,'Finance',54000,'Delhi','Accountant',6,'Active','2022-09-01'),
      (27,'Sanket Pawar',30,'IT',69000,'Pune','Developer',7,'Active','2020-12-17'),
      (28,'Shruti Pawar',28,'Sales',41000,'Mumbai','Sales Executive',5,'Active','2023-06-29'),
      (29,'Divya Gaikwad',35,'IT',80000,'Chennai','Tech Lead',9,'Active','2021-04-13'),
      (30,'Diksha Supnar',25,'HR',46000,'Bangalore','HR Assistant',6,'Inactive','2024-07-10'),
      (31,'Omkar Salunke',34,'Marketing',50000,'Delhi','Marketing Manager',8,'Active','2020-02-20'),
      (32,'Ravina Sodha',29,'IT',63000,'Mumbai','Developer',7,'Inactive','2023-03-18'),
      (33,'Vishal Somvanshi',27,'IT',61000,'Hyderabad','Developer',6,'Active','2022-05-26'),
      (34,'Prashant Ashtekar',38,'Finance',82000,'Bangalore','Finance Manager',9,'Active','2019-08-15'),
      (35,'Pramod Saundore',28,'Sales',39000,'Pune','Sales Executive',4,'Active','2024-12-01'),
      (36,'Kunal Mundlik',30,'IT',70000,'Chennai','Developer',7,'Active','2020-11-22'),
      (37,'Rashmi Magar',33,'HR',52000,'Mumbai','HR Manager',8,'Active','2021-10-10'),
      (38,'Palak Salunke',29,'IT',65500,'Delhi','Developer',7,'Inactive','2023-08-18'),
      (39,'Arjun Kamble',26,'Marketing',38000,'Hyderabad','Marketing Assistant',5,'Active','2024-02-14'),
      (40,'Sakshi Kahandal',31,'IT',69000,'Bangalore','Developer',8,'Active','2021-09-27'),
      (41,'Rutuja Navale',27,'Sales',42000,'Mumbai','Sales Executive',6,'Active','2023-06-12'),
      (42,'Ketan Sabale',32,'IT',72000,'Delhi','Senior Developer',8,'Active','2020-01-20'),
      (43,'Vidya Kumbhar',30,'Finance',58000,'Chennai','Accountant',7,'Inactive','2022-03-03'),
      (44,'Jayesh Mane',28,'Marketing',45000,'Pune','Marketing Executive',6,'Active','2024-01-10'),
      (45,'Piyush Bhand',26,'HR',47000,'Mumbai','HR Assistant',5,'Active','2023-12-20'),
      (46,'Shweta Kale',34,'IT',78000,'Hyderabad','Senior Developer',9,'Active','2019-02-15'),
      (47,'Nisha Tirwadi',29,'Finance',60000,'Delhi','Accountant',6,'Active','2022-10-09'),
      (49,'Kirti Nagle',30,'Sales',41000,'Chennai','Sales Executive',5,'Inactive','2022-07-16'),
      (50,'Avishkar Taksal',33,'Marketing',52000,'Bangalore','Marketing Manager',8,'Active','2021-11-05');

select * from EMPLOYEE


# 	update the employees salary whose doj is before 01-01-2025 by 10%

UPDATE EMPLOYEE
SET emp_sal = emp_sal * 1.10
WHERE emp_dateofjoining < '2025-01-01';


# update the employee city where the previous employee city is mumbai to NAVI MUMBAI

UPDATE EMPLOYEE
SET emp_city = 'NAVI MUMBAI'
WHERE emp_city = 'Mumbai';

select * from EMPLOYEE


# DELETE the records where employee activity status is null.

DELETE FROM EMPLOYEE
WHERE emp_activitystatus = NULL

#filter the employees where there performance is less than 7.

select * from EMPLOYEE
WHERE emp_performance < 7

### Ass- 2

#Q1. Write a query to display all unique departments from the employees table.
 SELECT DISTINCT EMP_DEPT FROM EMPLOYEE;
 
 
#Q2. Display all distinct cities where employees are located.
SELECT *FROM EMPLOYEE;
SELECT DISTINCT EMP_CITY FROM EMPLOYEE;

#Q3. Display all employees ordered by salary in descending order
SELECT *FROM EMPLOYEE;
SELECT *FROM EMPLOYEE ORDER BY EMP_SAL DESC;

#Q4. Display employees ordered by age in ascending order.
SELECT *FROM EMPLOYEE ORDER BY EMP_AGE ASC;


#Q5. List employees ordered by department first, then by salary.
SELECT * FROM EMPLOYEE ORDER BY EMP_DEPT,EMP_SAL;

#Q6. Find the total number of employees in each department.
SELECT EMP_DEPT,COUNT(*) EMP_ID
FROM EMPLOYEE
GROUP BY EMP_DEPT;

#Q7. Display the average salary of employees for each city.
SELECT emp_city, AVG(emp_sal)
FROM employee
GROUP BY emp_city;

#Q8. Show the maximum salary in each department.
SELECT EMP_DEPT,MAX(EMP_SAL)
FROM EMPLOYEE
GROUP BY EMP_DEPT;

#Q9. Count how many employees belong to each activity status category.
SELECT*FROM EMPLOYEE;
SELECT emp_activitystatus, COUNT(*)
FROM employee
GROUP BY emp_activitystatus;

#Q10. Display departments having more than 5 employees.
SELECT EMP_DEPT,COUNT(*)
FROM EMPLOYEE
GROUP BY EMP_DEPT
HAVING COUNT(*) > 5;

#Q11. List the cities having an average salary greater than 50,000.
SELECT EMP_CITY,AVG(EMP_SAL)
FROM EMPLOYEE
GROUP BY EMP_CITY
HAVING AVG(EMP_SAL) > 50000;


#Q12. Show departments where the maximum salary is less than 80,000.
SELECT EMP_DEPT,MAX(EMP_SAL)
FROM EMPLOYEE
GROUP BY EMP_DEPT
HAVING MAX(EMP_SAL) < 80000;


#Q13. Display employees whose salary is between 30,000 and 60,000.
SELECT *FROM EMPLOYEE WHERE EMP_SAL BETWEEN 30000 AND 60000;

#Q14. List employees whose age is not between 25 and 40.
SELECT *FROM EMPLOYEE WHERE EMP_AGE NOT BETWEEN 25 AND 40;


#Q15. Show employees who joined between '2020-01-01' and '2023-01-01'.
SELECT *FROM EMPLOYEE WHERE EMP_DATEOFJOINING BETWEEN '2020-01-01' AND '2023-01-01';

#Q16. Display employees who belong to the departments IN ('HR', 'Finance', 'Sales').
SELECT *FROM EMPLOYEE WHERE EMP_DEPT IN('HR','FINANCE','SALES');


#Q17. Display employees whose city is NOT IN ('Mumbai', 'Delhi').
SELECT *FROM EMPLOYEE WHERE EMP_CITY NOT IN('MUMBAI','DELHI');

#Q18. Display employees whose designation is IN ('Manager', 'Team Lead').
SELECT *FROM EMPLOYEE WHERE EMP_DESG IN('MANAGER','TEAM LEAD');


#Q19. Display the top 5 highest-paid employees.
SELECT * FROM employee
ORDER BY EMP_SAL DESC
LIMIT 5;


#Q20. Display 5 employees after skipping the first 3.
SELECT *FROM EMPLOYEE
LIMIT 5 OFFSET 3;

#Q21. Display the top 10 youngest employees using ORDER BY and LIMIT.
SELECT * FROM employee
ORDER BY emp_age ASC
LIMIT 10;


#Q22. Display all distinct combinations of department and designation.
SELECT DISTINCT emp_dept, emp_desg
FROM employee;


#Q23. Show unique department–city pairs where employees are present.
SELECT DISTINCT EMP_DEPT,EMP_CITY
FROM EMPLOYEE;

#Q24. Display employees ordered by performance ascending and salary descending.
SELECT * FROM employee
ORDER BY emp_performance ASC, emp_sal DESC;

#Q25. Display employees who joined in the last 2 years, ordered by DOJ.
SELECT *FROM employee
WHERE emp_dateofjoining >= '2023-01-01'
ORDER BY emp_dateofjoining;

#Q26. List employees ordered by city, then age descending.
SELECT * FROM employee
ORDER BY emp_city, emp_age DESC;

#Q27. For each department, show the total salary expenditure.
SELECT EMP_DEPT,SUM(EMP_SAL)
FROM EMPLOYEE
GROUP BY EMP_DEPT;


#Q28. Find the average age of employees for each designation.
SELECT emp_desg, AVG(emp_age)
FROM employee
GROUP BY emp_desg;


#Q29. Group employees by city and department, and display their count.
SELECT EMP_CITY,EMP_DEPT,COUNT(*)
FROM EMPLOYEE
GROUP BY EMP_CITY,EMP_DEPT;


#Q30. Display the count of employees hired each year.
SELECT YEAR(emp_dateofjoining),COUNT(*)
FROM employee
GROUP BY YEAR(emp_dateofjoining);


#Q31. Show departments having average salary > 60,000 and more than 3 employees.
SELECT emp_dept, AVG(emp_sal), COUNT(*)
FROM employee
GROUP BY emp_dept
HAVING AVG(emp_sal) > 60000 AND COUNT(*) > 3;


#Q32. Display cities where minimum salary is above 40,000.
SELECT EMP_CITY, MIN(EMP_SAL)
FROM EMPLOYEE
GROUP BY EMP_CITY
HAVING MIN(EMP_SAL) > 40000; 


#Q33. Display designations having more than 2 employees aged above 35.
SELECT emp_desg, COUNT(*)
FROM employee
WHERE emp_age > 35
GROUP BY emp_desg
HAVING COUNT(*) > 2;


#Q34. List departments where count of active employees is less than 3.
select emp_dept,count(*)
from employee
where emp_activitystatus = 'active'
group by emp_dept
having count(*) < 3;


#Q35. Display employees whose DOJ is between 2015 and 2020 and salary not between 50,000 and 80,000.
SELECT *FROM employee
WHERE emp_dateofjoining BETWEEN '2015-01-01' AND '2020-12-31'
AND emp_sal NOT BETWEEN 50000 AND 80000;

#Q36. Display employees aged between 30 and 50 with performance rating between 3 and 5.
SELECT *FROM employee
WHERE emp_age BETWEEN 30 AND 50
AND emp_performance BETWEEN 3 AND 5;


#Q37. List employees whose salary is not between the min and max salary of their department.
SELECT emp_dept, MIN(emp_sal), MAX(emp_sal)
FROM employee
GROUP BY emp_dept;

#Q38. Display employees whose designation is NOT IN ('Intern','Trainee') and city IN('Pune','Hyderabad','Bangalore')
SELECT *FROM employee
WHERE emp_desg NOT IN ('Intern','Trainee')
AND emp_city IN ('Pune','Hyderabad','Bangalore');


#Q39. List employees whose department is in ('HR','Admin') but city not in ('Mumbai','Delhi').
SELECT *FROM employee
WHERE emp_dept IN ('HR','Admin')
AND emp_city NOT IN ('Mumbai','Delhi');



#Q40. List employees whose performance score is IN (2,4,5).
SELECT *FROM employee
WHERE emp_performance IN (2,4,5);


#Q41. Display the second-highest salary employee.
SELECT *FROM employee
ORDER BY emp_sal DESC
LIMIT 1 OFFSET 1;

#Q42. Retrieve next 5 employees after the top 10 highest-paid.
SELECT *FROM employee
ORDER BY emp_sal DESC
LIMIT 5 OFFSET 10;

#Q43. Display the 4th to 8th youngest employees.
SELECT *FROM employee
ORDER BY emp_age ASC
LIMIT 5 OFFSET 3;


#Q44. Display departments with employee count and avg age between 28 and 40.
SELECT emp_dept, COUNT(*), AVG(emp_age)
FROM employee
GROUP BY emp_dept
HAVING AVG(emp_age) BETWEEN 28 AND 40;


#Q45. Find the top 3 departments with highest total salary payout.
SELECT emp_dept, SUM(emp_sal)
FROM employee
GROUP BY emp_dept
ORDER BY sum(emp_sal) DESC
LIMIT 3;


#Q46. Display cities having more than 3 distinct designations.
SELECT emp_city, COUNT(DISTINCT emp_desg) 
FROM employee
GROUP BY emp_city
HAVING COUNT(DISTINCT emp_desg) > 3;

#Q47. For each department, display the highest-paid employee.
SELECT emp_dept, MAX(emp_sal)
FROM employee
GROUP BY emp_dept;

#Q48. Display employees not in HR, aged 25–40, ordered by performance, first 7 results.
SELECT *FROM employee
WHERE emp_dept != 'HR' AND emp_age BETWEEN 25 AND 40
ORDER BY emp_performance
LIMIT 7;


#Q49. Show the oldest 10 employees from selected cities, offset by 2.
SELECT *FROM employee
WHERE emp_city IN ('Pune','Delhi','Hyderabad','Bangalore')
ORDER BY emp_age DESC
LIMIT 10 OFFSET 2;

#Q50. Display designations with total salary > 2,00,000 sorted descending.
SELECT emp_desg, SUM(emp_sal)
FROM employee
GROUP BY emp_desg
HAVING SUM(emp_sal) > 200000
ORDER BY SUM(emp_sal) DESC;

### Ass -3

insert into employee(emp_id, emp_name, emp_age, emp_dept, emp_sal, emp_city, emp_desg, emp_performance, emp_activitystatus, emp_dateofjoining) 
values (51,'vaishnavi',35,'Operations',65000,'Delhi','Intern',8,'On Leave',"2018-8-15"),
       (52,'harshita',25,'Operations',50000,'Noida','Trainee',7,'active',"2019-5-01"),
       (53,'neha',30,'Operations',40000,'Gurgaon','Analyst',3,'On Leave',"2020-6-05"),
       (54,'anjali',28,'IT',32000,'Chennai','Consultant',2,'active',"2022-01-15"),
       (55,'sneha',26,'IT',54000,'Mumbai','software developer',6,'active',"2023-8-10"),
       (56,'rakshita',32,'IT',30000,'Bangalore','software developer',2,'On Leave',"2022-3-01");
# Que1. Display all distinct combinations of emp_city and emp_activity_status.
select distinct emp_city , emp_activitystatus
from employee;

# Que 2. Display all unique department–performance pairs that exist in the company.
select distinct emp_dept,EMP_PERFORMANCE
from employee;

# Que 3. Show all distinct values of designation vs city
select distinct emp_desg,emp_city
from employee;

# Que .4. Display all employees ordered by emp_city ASC, emp_desg DESC, emp_sal ASC.
select * from employee
order by  emp_city asc , emp_desg desc, emp_sal asc;

# Que 5. Display employees ordered alphabetically by emp_name.
select * from emp
order by emp_name asc;

# Que 6. Order employees by emp_activity_status, emp_performance, and emp_age.
SELECT * FROM employee
ORDER BY emp_activitystatus,emp_performance,EMP_AGE;

# QUE 7. Display employees who joined after 2018 using BETWEEN, ordered by emp_date_of_joining DESC.
SELECT * FROM employee
WHERE emp_dateofjoining BETWEEN "2018-01-01" AND "2020-01-01"
ORDER BY emp_dateofjoining DESC;

# Que 8. Group employees by emp_city and list the grouped rows.
select emp_city, count(*)
from employee
group by emp_city;

# Que 9. Group employees by emp_dept and emp_activity_status.
SELECT EMP_DEPT, COUNT(*)emp_activitystatus
FROM employee
GROUP BY EMP_DEPT;

# Que 10. Group employees based on emp_desg and display results ordered by emp_desg.
select emp_desg, emp_id
from employee
order by emp_desg;

# Que 11. Group by emp_performance and order results by performance descending.
select emp_performance,count(*)emp_id
from employee
group by emp_performance
order by emp_performance desc;

# Que 12. Group employees by emp_city having emp_city IN ('Pune','Delhi','Bangalore').
select emp_city, count(*)
from employee
where emp_city IN ('Pune','Delhi','Bangalore')
group by emp_city ;

# Que 13. Group employees by emp_activity_status having emp_activity_status <> 'Inactive'.
select EMP_ACTIVITYSTATUS
from employee
group by EMP_ACTIVITYSTATUS
having EMP_ACTIVITYSTATUS !='Inactive';

# Que 14. Group by emp_dept having emp_dept NOT BETWEEN 'A' AND 'H'.
select emp_dept, count(*)
from employee
group by emp_dept
having emp_dept not between 'A' and 'H';

# Que 15. Group by emp_desg having emp_desg LIKE 'S%'.
select emp_desg, count(*)
from employee
group by emp_desg
having emp_desg like 's%';

#Que 16. Display employees whose emp_name lies alphabetically between 'A' and 'M'.
select * from employee
WHERE emp_name between 'A' and 'M'
ORDER BY  EMP_NAME ASC;

# Que 17. Show employees whose emp_city is not between 'Delhi' and 'Pune'.
select * from employee 
where emp_city  not between 'Delhi' and 'Pune';

# Que 18. Display employees whose emp_date_of_joining is between two given years.
SELECT *
FROM employee
WHERE emp_dateofjoining BETWEEN '2015-01-01' AND '2020-12-31';

# Que 19. Show employees whose performance score is between 2 and 4.
select emp_name , emp_performance
from employee
where emp_performance not between 'Bangalore' and 'Mumbai';

#Que 20. Show employees whose emp_city alphabetically not between 'Bangalore' and'Mumbai
select EMP_NAME, emp_city
from employee
where emp_city not between 'Bangalore' and'Mumbai'
order by emp_city asc;

# Que 21. List employees whose emp_desg IN ('Developer','Analyst','Consultant') and emp_city NOT IN ('Mumbai','Chennai').
select * from employee
where emp_desg in ('Developer','Analyst','Consultant')
and emp_city not in ('Mumbai','Chennai');

# 22. Display employees whose emp_activity_status NOT IN ('Active','On Leave').
select * from employee
where emp_activitystatus not in ('Active','On Leave');

# 23. Show employees whose emp_dept IN ('IT','Finance','Operations') and emp_performance IN ('High','Medium').
select * from employee
where emp_dept in ('IT','Finance','Operations') 
and emp_performance in ('High','Medium');

# 24. Show employees whose emp_city IN ('Delhi','Noida','Gurgaon') and emp_desg NOT IN ('Intern','Trainee').
select * from employee
where emp_city in ('Delhi','Noida','Gurgaon')
and emp_desg not in ('Intern','Trainee');

# 25. Display the first 12 employees ordered by emp_id.
select * from employee
order by emp_id 
limit 12;

# 26. Display employees 11 to 20 using LIMIT and OFFSET.
select * from employee
order by emp_id
limit 10
offset 10;

# 27. Show the first 10 employees from emp_city = 'Pune'.
select * from employee
where emp_city = 'Pune'
limit 10;

# 28. Display the last 5 employees alphabetically by emp_name.
select * from employee
order by emp_name desc
limit 5;

# 29. Fetch any 7 employees from emp_dept = 'Sales' after skipping first 3.
select * from employee
where emp_dept = 'Sales' 
order by emp_id
limit 7
offset 3;

# 30. Display employees performance 5 to 10 by emp_age using ORDER BY, LIMIT, OFFSET
select * from employee
order by emp_performance asc
limit 5 offset 5;

### Ass 4

#Q1. Show all distinct emp_city values present in the table.
SELECT DISTINCT emp_city FROM EMPLOYEE;

#Q2. Display all distinct emp_dept values.
select distinct emp_dept from employee;

#Q3. Display all distinct combinations of emp_dept and emp_city.
select distinct emp_dept,emp_city from employee;

#Q4. Display distinct emp_activity_status values.
select distinct emp_activitystatus from employee;

#Q5. Show all unique department–designation pairs.
select distinct emp_dept,emp_desg from employee;

#Q6. Display all employees ordered by emp_age ASC.
select emp_age 
from employee
order by emp_age asc;

#Q7. Display employees ordered by emp_sal DESC.
select emp_sal
from employee
order by emp_sal desc

#Q8. Display employees ordered by emp_city ASC, emp_sal DESC.
select emp_city,emp_sal
from employee
order by emp_city,emp_sal desc;

#Q9. Sort employees by emp_activity_status ASC, emp_date_of_joining ASC.
select emp_activitystatus,emp_dateofjoining
from employee
order by emp_activitystatus,emp_dateofjoining asc;

#Q10. Display employees ordered by emp_desg ASC, emp_id DESC.
select emp_desg,emp_id
from employee
order by emp_desg asc,emp_id desc;

#Q11. Display employees whose emp_age is between 25 and 45.
select *from employee where emp_age between 25 and 45;

#Q12. Display employees whose emp_sal is not between 30000 and 70000.
select *from employee where emp_sal not between 30000 and 70000;

#Q13. Show employees who joined between '2015-01-01' and '2022-12-31'.
select *from employee where emp_dateofjoining between '2015-01-01' and '2022-12-31';

#Q14. Display employees whose emp_age is not between 30 and 50.
select *from employee where emp_age not between 30 and 50;

#Q15. Show employees whose date of joining is not between '2010-01-01' and '2020-12-31'.
select *from employee where emp_dateofjoining not between '2010-01-01' and '2020-12-31';

#Q16. Display employees whose emp_city IN ('Pune','Mumbai','Hyderabad').
select *from employee where emp_city IN('pune','mumbai','hyderabad');

#Q17. Show employees whose emp_dept NOT IN ('HR','Admin').
select *from employee where emp_dept NOT IN('HR','Admin');

#Q18. Display employees whose emp_desg IN ('Manager','Developer','Analyst').
select *from employee where emp_desg IN('manager','developer','analyst');

#Q19. Show employees whose emp_activity_status NOT IN ('Active','On Leave').
select *from employee where emp_activitystatus NOT IN('Active','On Leave');

#Q20. Display employees whose emp_performance IN ('High','Medium').
select *from employee where emp_performance IN('High','Medium');
select *from employee;

#Q21. Group employees by emp_city and display each group.
select emp_city,count(*)
from employee
group by emp_city;

#Q22. Group employees by emp_dept.emp
select emp_dept,count(*)
from employee
group by emp_dept;

#Q23. Group employees by emp_activity_status.
select emp_activitystatus,count(*)
from employee
group by emp_activitystatus;

#Q24. Group employees by emp_desg.
select emp_desg,count(*)
from employee
group by emp_desg;

#Q25. Group employees by emp_performance and order the groups alphabetically.
select emp_performance,count(*)
from employee
group by emp_performance
order by emp_performance asc;

#Q26. Group by emp_city having emp_city IN ('Delhi','Chennai','Pune').
select emp_city,count(*)
from employee
group by emp_city
having emp_city In('Delhi','Chennai','Pune');

#Q27. Group by emp_dept having emp_dept NOT IN ('HR','Support').
select emp_dept,count(*)
from employee
group by emp_dept
having emp_dept NOT IN('HR','Support');

#Q28. Group by emp_activity_status having emp_activity_status IN ('Active','Working').
select emp_activitystatus,count(*)
from employee
group by emp_activitystatus
having emp_activitystatus IN ('Active','Working');

#Q29. Group by emp_desg having emp_desg NOT IN ('Intern','Trainee').
select emp_desg,count(*)
from employee
group by emp_desg
having emp_desg IN ('Intern','Trainee');

#Q30. Group by emp_performance having emp_performance IN ('High','Low').
select emp_performance,count(*)
from employee
group by emp_performance
having emp_performance IN('High','Low');

select *from employee;

### Ass - 5

#Q1. Find the total salary expenditure of each department.
select emp_dept,sum(emp_sal)
from employee
group by emp_dept;

#Q2. Display the average age of employees in each city.
select emp_city,avg(emp_age)
from employee
group by emp_city;

#Q3. Show the maximum salary for each designation.
select emp_desg,max(emp_sal)
from employee
group by emp_desg;

#Q4. Find the minimum salary for each department.
select emp_dept,min(emp_sal)
from employee
group by emp_dept;


#Q5. Display the count of employees in each performance category.
select emp_performance,count(*)
from employee
group by emp_performance;

#Q6. Show the average salary of employees grouped by emp_activity_status.
select emp_activitystatus,avg(emp_sal)
from employee
group by emp_activitystatus;


#Q7. Display each city with the sum of salaries of employees.
select emp_city,sum(emp_sal)
from employee
group by emp_city;

#Q8. For each department, show count of employees and max salary.
select emp_dept,max(emp_sal),count(*)
from employee
group by emp_dept;


#Q9. List the minimum and maximum ages of employees in every city.
select emp_city,max(emp_age),min(emp_age)
from employee
group by emp_city;

#Q10. Show total employees and total salary grouped by emp_desg.
select emp_desg,count(emp_id),count(emp_sal)
from employee
group by emp_desg;

#Q11. Show departments having more than 10 employees.
select emp_dept,count(*)
from employee
group by emp_dept
having count(*) >10;

#Q12. List cities where average salary > 50,000.
select emp_city,avg(emp_sal)
from employee
group by emp_city
having avg(emp_sal) > 50000;

#Q13. Display performance groups where maximum salary < 80,000.
select emp_performance,max(emp_sal)
from employee
group by emp_performance
having max(emp_sal) < 80000;

#Q14. Show designations where average age BETWEEN 25 AND 40.
select emp_desg,avg(emp_age)
from employee
group by emp_desg
having avg(emp_age) between 25 and 40;

#Q15. Show activity statuses where count(*) NOT BETWEEN 2 AND 5.
select emp_activitystatus,count(*)
from employee
group by emp_activitystatus
having count(*) NOT BETWEEN 2 AND 5;

#Q16. Show departments whose sum of salaries is more than 3,00,000.
select emp_dept,sum(emp_sal)
from employee
group by emp_dept
having sum(emp_sal) > 300000;

#Q17. List cities where count of employees is NOT IN (2,5,8).
select emp_city,count(*)
from employee
group by emp_city
having count(*) NOT IN (2,5,8);

#Q18. Show performance ratings where min(sal) > 30,000.
select emp_performance,min(emp_sal)
from employee
group by emp_performance
having min(emp_sal) > 30000;

#Q19. Show designations where max(age) NOT BETWEEN 30 AND 50.
select emp_desg,max(emp_age)
from employee
group by emp_desg
having max(emp_age) NOT BETWEEN 30 AND 50;

#Q20. Show departments having avg(sal) BETWEEN 40,000 AND 70,000.
select emp_dept,avg(emp_sal)
from employee
group by emp_dept
having avg(emp_sal) between 40000 and 70000;

#Q21. Show departments sorted by total salary DESC.
select emp_dept,sum(emp_sal)
from employee
group by emp_dept
order by sum(emp_sal) desc;


#Q22. Show designations sorted by average salary ASC.
select emp_desg,avg(emp_sal)
from employee
group by emp_desg
order by avg(emp_sal) asc;

#Q23. List cities sorted by count of employees DESC.
select emp_city,count(*)
from employee
group by emp_city
order by count(*) desc;

#Q24. Display activity_status sorted by min(sal) ASC.
select emp_activitystatus,min(emp_sal)
from employee
group by emp_activitystatus
order by min(emp_sal) asc;

#Q25. Display departments sorted by max(age) DESC.
select emp_dept,max(emp_age)
from employee
group by emp_dept
order by max(emp_age) desc;

#Q26. List distinct cities with count of employees.
select distinct emp_city,count(*)
from employee
group by emp_city

#Q27. Show distinct designations with their minimum salary.
select distinct emp_desg,min(emp_sal)
from employee
group by emp_desg;

#Q28. Show distinct performance categories with average salary.
select distinct emp_performance,avg(emp_sal)
from employee
group by emp_performance;

#Q29. Show distinct departments with maximum age.
select distinct emp_dept,max(emp_age)
from employee
group by emp_dept;

#Q30. Show distinct activity statuses with sum of salaries.
select distinct emp_activitystatus,sum(emp_sal)
from employee
group by emp_activitystatus;

#Q31. Show departments where avg(sal) BETWEEN 40,000 AND 60,000.
select emp_dept,avg(emp_sal)
from employee
group by emp_dept 
having avg(emp_sal) between 40000 and 60000;

#Q32. Show cities where count(*) NOT BETWEEN 5 AND 15.
select emp_city,count(*)
from employee
group by emp_city
having count(*) not between 5 and 15;

#Q33. Show performance ratings where min(age) BETWEEN 20 AND 30.
select emp_performance,min(emp_age)
from employee
group by emp_performance
having min(emp_age) between 20 and 30;

#Q34. Show designations where max(sal) NOT BETWEEN 50,000 AND 1,00,000.
select emp_desg,max(emp_sal)
from employee
group by emp_desg
having max(emp_sal) not between 50000 and 100000;

#Q35. Show departments where sum(sal) BETWEEN 2,00,000 AND 5,00,000.
select emp_dept,sum(emp_sal)
from employee
group by emp_dept
having sum(emp_sal) between 200000 and 500000;

#Q36. Show departments where count(*) IN (5,10,15).
select emp_dept,count(*)
from employee
group by emp_dept
having count(*) IN (5,10,15);

#Q37. Show cities where avg(age) NOT IN (25,30,35).
select emp_city,avg(emp_age)
from employee
group by emp_city
having avg(emp_age) NOT IN (25,30,35);

#Q38. Show designations where max(sal) IN (50000,70000,90000).
select emp_desg,max(emp_sal)
from employee
group by emp_desg
having max(emp_sal) IN (50000,70000,90000);

#Q39. Show performance categories where sum(sal) IN (200000,300000).
select emp_performance,sum(emp_sal)
from employee
group by emp_performance
having sum(emp_sal) IN (200000,300000);

#Q40. Show emp_activity_status where min(age) NOT IN (22,25).
select emp_activitystatus,min(emp_age)
from employee
group by emp_activitystatus
having min(emp_age) NOT IN (22,25);

### Ass - 6

create table DEPT(
    dept_id smallint primary key,
    dept_name varchar(20) unique,
    dept_location varchar(30)
);
select *from employee;
CREATE TABLE PROJECT(
    PROJECT_ID SMALLINT PRIMARY KEY,
    PROJECT_NAME VARCHAR(30),
    PROJECT_COST INT,
    PROJECT_DURATION INT,
    DEPT_ID SMALLINT,
    EMP_ID INT,
    FOREIGN KEY (DEPT_ID) REFERENCES DEPT(DEPT_ID),
    FOREIGN KEY (EMP_ID) REFERENCES EMPLOYEE(EMP_ID)
);

insert into DEPT(dept_id, dept_name, dept_location) values
(1, 'TECHNOLOGY', 'MUMBAI'),
(2, 'HUMAN RESOURCES', 'DELHI'),
(3, 'IT', 'PUNE'),
(4, 'FINANCE', 'BANGALORE'),
(5, 'CUSTOMER SUPPORT', 'HYDERABAD'),
(6, 'OPERATIONS', 'CHENNAI'),
(7, 'INNOVATION LAB', 'NOIDA');


ALTER TABLE PROJECT
ADD CONSTRAINT fk_empid
FOREIGN KEY (EMP_ID)
REFERENCES EMPLOYEE(emp_id);

alter table employee add dept_id smallint;
alter table employee add project_id smallint;


ALTER TABLE EMPLOYEE
ADD CONSTRAINT fk_deptid
FOREIGN KEY (DEPT_ID)
REFERENCES DEPT(DEPT_id);

ALTER TABLE EMPLOYEE
ADD CONSTRAINT fk_projectid
FOREIGN KEY (PROJECT_ID)
REFERENCES PROJECT(PROJECT_id);

update employee 
set dept_id = 2
where emp_dept = 'HUMAN RESOURCES';

update employee 
set dept_id = 1
where emp_dept = 'technology'

update employee 
set dept_id = 3
where emp_dept = 'IT';

select *from project;
select *from dept;
update employee 
set project_id = 6
where emp_dept = 'FINANCE';

update employee 
set dept_id = 7
where emp_dept = 'INNOVATION LAB';

select *from dept;
select *from project;
update employee 
set project_id = 201
where emp_dept = 'TECHNOLOGY';

update employee 
set project_id = 202
where emp_dept = 'HUMAN RESOURCES';

update employee 
set project_id = 203
where emp_dept = 'IT';

update employee 
set project_id = 204
where emp_dept = 'FINANCE';

select *from project;
select *from employee;

insert into PROJECT(PROJECT_ID, PROJECT_NAME, PROJECT_COST, PROJECT_DURATION, DEPT_ID, EMP_ID) values
(201, 'DIGITAL MARKETING', 850000, 6, 1, 1),
(202, 'MOBILE APP DEVELOPMENT', 450000, 4, 1, 2),
(203, 'DATA MIGRATION', 300000, 2, 3, 3),
(204, 'DIGITAL AD CAMPAIGN', 150000, 1, 4, 4),
(205, 'CUSTOMER PORTAL', 525000, 5, 5, 5);

select *from employee;
#Q1. Display all employees along with their department name.
SELECT e.emp_name, d.emp_dept
FROM EMPLOYEE e
INNER JOIN DEPT d 
ON e.emp_dept = d.emp_dept;

alter table dept change dept_name emp_dept varchar(20);

select *from dept;
#Q2. Retrieve employee name, department city, and employee city using an INNER JOIN.
select e.emp_name,
       d.dept_location,
       e.emp_city
from employee e
inner join dept d
on e.emp_dept = d.emp_dept;


#Q3. List all employees and the projects they are working on.
select e.emp_name,
       p.project_name
from employee e
inner join project p
on e.emp_id = p.emp_id;


#Q4. Show department name, project name, and project cost for each project.
select d.emp_dept,
       p.project_name,
       p.project_cost
from project p
inner join dept d
on p.dept_id = d.dept_id;

#Q5. Display all employees with their project name and department name.
select e.emp_name,
       p.project_name,
       e.emp_dept
from employee e
inner join project p
on e.emp_id = p.emp_id;

#Q6. List all departments along with employees in those departments (LEFT JOIN).
select d.emp_dept,
       e.emp_name
from dept d
left join employee e
on d.dept_id = e.dept_id;
       

#Q7. Show projects that do not have any employees.
SELECT p.project_name
FROM PROJECT p
LEFT JOIN EMPLOYEE e 
ON p.emp_id = e.emp_id
WHERE e.emp_id IS NULL;

select *from employee;

#Q8. List all employees even if they are not assigned to any project (LEFT JOIN).
select e.emp_name
from project p
LEFT JOIN employee e
on p.emp_id = e.emp_id;


#Q9. Retrieve department-wise total employees using JOIN only.
select e.emp_dept,count(emp_id)
from employee e
inner join dept d
on e.dept_id = d.dept_id
group by e.emp_dept;

#Q10. Display employees whose department city is the same as their employee city.
select e.emp_name,
       e.emp_city,
       d.dept_location
from employee e
inner join dept d
on e.dept_id = d.dept_id
where e.emp_city = d.dept_location;
      
      select *from dept;

#Q11. Show employees who are working on projects belonging to a different department.
select e.emp_name,
	   p.project_name,
       e.emp_dept
from employee e
inner join project p
on e.emp_id = p.emp_id
where e.dept_id != p.dept_id;
       

#Q12. Display project details along with associated employees.
select p.project_id,
       p.project_name,
       p.project_cost,
       p.project_duration,
       e.emp_name
from project p
inner join employee e
on p.project_id = e.project_id;


#Q13. Show employee name, project duration, and department city.
select e.emp_name,
       p.project_duration,
       d.dept_location
from employee e
inner join project p
on e.project_id = p.project_id
inner join dept d
on e.dept_id = d.dept_id;

#Q14. Display all projects along with the number of employees assigned.
select p.project_name,count(*)
from employee e
left join project p
on e.emp_id = p.emp_id
group by p.project_name;
       


#Q15. Show all employees whose project cost is greater than 1,00,000.
select e.emp_name,
       p.project_cost
from employee e
inner join project p
on e.emp_id = p.emp_id
where project_cost > 100000;

#Q16. List employees with performance ‘Excellent’ along with their project and department.
select *from employee;
update employee
set emp_performance = 'Excellent'
where emp_id = 2

select e.emp_name,
       e.emp_performance,
       p.project_name,
       e.emp_dept
from employee e
inner join project p
on e.emp_id = p.emp_id
where emp_performance = 'Excellent';

#Q17. Display departments that have at least one project and five employee .


#Q18. Retrieve employee name and project duration for long-duration projects.
select e.emp_name,
       p.project_duration
from employee e
inner join project p
on e.emp_id = p.emp_id
where project_duration > 5;

#Q19. List employees who joined before 2020 with department and project details.
select *from project;
select e.emp_name,
       e.emp_dateofjoining,
       e.emp_dept,
       p.project_name,
       p.project_duration,
       p.project_cost
from employee e
inner join project p
on e.emp_id = p.emp_id
where emp_dateofjoining < '2020-01-01';

update employee
set emp_dateofjoining = '2019-06-11'
where emp_id = 5;

select *from employee;

#Q20. Display employees whose department does not match project department.
select *from project;
SELECT e.emp_name, 
       e.emp_dept,
       p.project_name,
       p.dept_id
FROM EMPLOYEE e
INNER JOIN PROJECT p 
ON e.emp_id = p.emp_id
WHERE e.emp_dept != p.dept_id;

       
#Q21. Show employees whose salary is greater than project cost.
select *from employee;
select e.emp_name,
       e.emp_sal,
       p.project_cost
from employee e
inner join project p
on e.emp_id = p.emp_id
where e.emp_sal > p.project_cost;

#Q22. Retrieve employees working in the same city as project’s department city.
SELECT e.emp_name, 
       e.emp_city,
       d.dept_location
FROM EMPLOYEE e
INNER JOIN PROJECT p 
ON e.emp_id = p.emp_id
INNER JOIN DEPT d 
ON p.dept_id = d.dept_id
WHERE e.emp_city = d.dept_location;

#Q23. Display project names and department names using INNER JOIN.
select p.project_name,
       d.emp_dept
FROM project p
INNER JOIN dept d
on p.dept_id = d.dept_id;
       
#Q24. List all departments with the projects belonging to them.
select d.emp_dept,
       p.project_name
FROM dept d 
INNER JOIN project p
on d.dept_id = p.dept_id;

#Q25. Display all employees with department city and project cost.
select e.emp_name,
       d.dept_location,
       p.project_cost
FROM employee e
INNER JOIN dept d
on e.dept_id = d.dept_id
INNER JOIN project p
on d.dept_id = p.dept_id;

### Ass- 7

#Q1. Display the total number of employees using COUNT().
SELECT COUNT(EMP_ID) FROM EMPLOYEE;

#Q2. Show the highest salary using MAX().
SELECT MAX(EMP_SAL) FROM EMPLOYEE;

#Q3. Show the lowest salary using MIN().
SELECT MIN(EMP_SAL) FROM EMPLOYEE;

#Q4. Display the average salary using AVG().
SELECT AVG(EMP_SAL) FROM EMPLOYEE;

#Q5. Display the sum of all salaries using SUM().
SELECT SUM(EMP_SAL) FROM EMPLOYEE;

#Q6. Convert all employee names to UPPER().
SELECT UPPER(EMP_NAME) FROM EMPLOYEE;

#Q7. Convert all employee names to LOWER().
SELECT LOWER(EMP_NAME) FROM EMPLOYEE;

#Q8. Find the LENGTH() of each employee name.
SELECT LENGTH(EMP_NAME) FROM EMPLOYEE;

#Q9. Extract the first 3 characters of each employee name using LEFT().
SELECT *FROM EMPLOYEE;
SELECT LEFT(emp_name,3) from employee;

#Q10. Extract the last 3 characters of each employee name using RIGHT().
SELECT RIGHT(emp_name,3) from employee;

#Q11. Reverse each employee name using REVERSE().
SELECT REVERSE(emp_name) from employee;

#Q12. Round each salary to 2 decimals using ROUND().
SELECT ROUND(EMP_SAL,2) FROM EMPLOYEE;

#Q13. Extract only the DATE() from a datetime column.
SELECT *FROM EMPLOYEE;
SELECT DATE(emp_dateofjoining) FROM employee;

#Q14. Find date difference using DATEDIFF().
SELECT DATEDIFF('2025-01-01',2024-12-01);

#Q15. Extract the YEAR() from join_date.
SELECT *FROM EMPLOYEE;
SELECT YEAR(emp_dateofjoining) FROM EMPLOYEE;

#Q16. Extract the MONTH() from join_date.
SELECT MONTH(emp_dateofjoining) FROM employee;

#Q17. Extract the DAY() from join_date.
SELECT DAY(emp_dateofjoining) FROM employee;

#Q18. Format salary to 2 decimals using FORMAT().
SELECT FORMAT(emp_sal, 2) FROM employee;

#Q19. Use MOD() to find remainder when salary is divided by 1000.
SELECT MOD(emp_sal, 1000) FROM employee;

#Q20. Calculate POWER(salary,2).
SELECT POWER(emp_sal, 2) FROM employee;

#Q21. Find absolute difference between salary and 50000 using ABS().
SELECT ABS(emp_sal - 50000) FROM employee; 

#Q22. Extract substring of emp_name using SUBSTRING().
SELECT SUBSTRING(emp_name, 2, 4) FROM employee;

#Q23. Replace 'a' with 'A' in emp_name using REPLACE().
SELECT REPLACE(emp_name, 'a', 'A') FROM employee;

#Q24. Remove spaces from emp_name using TRIM().
SELECT TRIM(emp_name) FROM employee;

#Q25. Pad employee IDs to 5 digits using LPAD().
SELECT LPAD(emp_id, 5, '0') FROM employee;

#Q26. Pad employee IDs on the right using RPAD().
SELECT RPAD(emp_id, 5, '0') FROM employee;

#Q27. Display unique department names using DISTINCT.
SELECT DISTINCT emp_dept FROM dept;

#Q28. Return salary as 0 when NULL using IFNULL().
SELECT IFNULL(emp_sal, 0) FROM employee;

#Q29. Convert salary to CHAR using CAST().
SELECT CAST(emp_sal AS CHAR) FROM employee;

#Q30. Extract month name from join_date using MONTHNAME().
SELECT MONTHNAME(emp_dateofjoining) FROM employee;

 ### Ass - 8

#Q1. Display each employee’s name with all spaces removed using REPLACE().
select REPLACE(emp_name,' ','') from employee;

#Q2. Show the first 5 characters of the department name using SUBSTRING().
select SUBSTRING(emp_dept,1,5) from employee;

#Q3. Convert city names to lowercase using LOWER().
select LOWER(emp_city) from employee;

#Q4. Show employee names padded to 15 characters using RPAD().
select RPAD(emp_name,15,' ') from employee;

#Q5. Display employee names with leading zeros using LPAD().
select LPAD(emp_name,15,0) from employee;

#Q6. Display the character length of each department using CHAR_LENGTH().
select CHAR_LENGTH(emp_dept) from employee;

#Q7. Extract the middle 4 characters from emp_name using SUBSTRING().
select SUBSTRING(emp_name,)

#Q8. Reverse the city names using REVERSE().SELECT city, REVERSE(city) AS reversed_city
SELECT emp_city, REVERSE(emp_city) AS reversed_city FROM employee;

#Q9. Replace every occurrence of 'e' in emp_name with '*'.
SELECT REPLACE(emp_name, 'e', '*') FROM employee;

#Q10. Trim both-side spaces from emp_name using TRIM().
SELECT TRIM(emp_name) FROM employee;

#Q11. Find the square root of each salary using SQRT().
SELECT SQRT(emp_sal) FROM employee;

#Q12. Display salary raised to the power of 3 using POWER().
SELECT POWER(emp_sal,3) FROM employee;

#Q13. Show absolute value of (salary – 30000) using ABS().
SELECT ABS(emp_sal - 30000) FROM employee;

#Q14. Round salaries to the nearest thousand using ROUND().


#Q15. Round salaries down to the nearest integer using FLOOR().
SELECT FLOOR(emp_sal) FROM employee;

#Q16. Round salaries up to the nearest integer using CEIL().
SELECT CEIL(emp_sal) FROM employee;

#Q17. Display the remainder when salary is divided by 7 using MOD().
SELECT MOD(emp_sal,7) from employee;

#Q18. Show natural logarithm of each salary using LOG().
SELECT LOG(emp_sal) FROM employee;

#Q19. Show base-10 logarithm of each salary using LOG10().
SELECT LOG10(emp_sal) FROM employee;

#Q20. Show exponential value of 2^salary using EXP().


#Q21. Show the MONTHNAME() for each join_date.
SELECT MONTHNAME(emp_dateofjoining) FROM employee;

#Q22. Display DAYNAME() for each join_date.
SELECT DAYNAME(emp_dateofjoining) FROM employee;

#Q23. Extract the hour from NOW() using EXTRACT().
SELECT EXTRACT(hour from NOW());

#Q24. Add 15 days to join_date using DATE_ADD().
SELECT DATE_ADD(emp_dateofjoining, INTERVAL 15 DAY) FROM employee;

#Q25. Subtract 90 days from join_date using DATE_SUB().
SELECT DATE_SUB(emp_dateofjoining, INTERVAL 90 DAY) FROM employee;

#Q26. Display number of days each employee has worked using DATEDIFF(NOW(), join_date).
SELECT DATEDIFF(NOW(), emp_dateofjoining) FROM employee;

#Q27. Extract only the date portion of NOW() using DATE().
SELECT DATE(NOW());

#Q28. Extract the YEAR from join_date using EXTRACT(YEAR FROM join_date).
SELECT EXTRACT(YEAR FROM emp_dateofjoining) FROM employee;

#Q29. Extract the MONTH from join_date using MONTH().
SELECT MONTH(emp_dateofjoining) FROM employee;

#Q30. Extract the DAY from join_date using DAY().
SELECT DAY(emp_dateofjoining) FROM employee;

#Q31. Count how many unique departments exist using COUNT(DISTINCT department).
SELECT COUNT(DISTINCT emp_dept) from employee;

#Q32. Find the total number of cities listed using COUNT(DISTINCT city).
SELECT COUNT(DISTINCT emp_city) from employee;

#Q33. Show total salary grouped by department using SUM().
SELECT SUM(emp_sal) FROM employee
group by emp_dept;

#Q34. Display the average length of employee names using AVG(LENGTH(emp_name)).
SELECT AVG(LENGTH(emp_name)) from employee;

#Q35. Show minimum and maximum salary per city using MIN() and MAX().
SELECT MIN(emp_sal),MAX(emp_sal) from employee
group by emp_city;

#Q36. Display how many employees have salary values rounded above 50000.
SELECT COUNT(*)
FROM employee
WHERE ROUND(emp_sal) > 50000;

#Q37. Display the highest 3 salary values using MAX() with LIMIT.
SELECT emp_sal,MAX(emp_sal)
FROM employee
group by emp_sal
LIMIT 3;

#Q38. Count how many employees have salary divisible by 1000 using MOD().
SELECT COUNT(*) FROM employee 
 WHERE MOD(emp_sal,1000)=0;

#Q39. Show total employees whose name ends with 'a' using RIGHT
SELECT emp_name FROM employee
 WHERE RIGHT(emp_name, 1) = 'A';

#Q40. Display total number of employees who joined in the current year using YEAR().
SELECT  COUNT(*) AS Total_employees 
 FROM employee 
 WHERE YEAR(emp_dateofjoining) = '2025';
