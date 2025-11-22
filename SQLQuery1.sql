use CompanyDB
INSERT INTO DEPARTMENT (DNAME, Dnum, MGRSSN, MGRSTARTDATE)
VALUES 
('Research', 10, '123456789', '2020-01-15'),
('Administration', 20, '333445555', '2021-03-01'),
('IT Support', 30, '987654321', '2019-09-10')

INSERT INTO EMPLOYEE (FNAME, LNAME, SSN, BDATE, ADDRESS, SEX, SALARY, SUPERSSN, DNO)
VALUES
('John', 'Smith', '123456789', '1985-05-12', '123 Main St, Cairo', 'M', 3000, NULL, 10),
('Mary', 'Ali', '333445555', '1990-08-23', '45 Nile Ave, Giza', 'F', 3500, '123456789', 20),
('Ahmed', 'Hassan', '987654321', '1988-02-10', '78 Tahrir Sq, Cairo', 'M', 4000, '123456789', 30),
('Sara', 'Kamel', '555666777', '1995-09-18', '12 Dokki St, Giza', 'F', 2800, '987654321', 30)

INSERT INTO DEPT_LOCATIONS (DNUM, DLOC)
VALUES
(10, 'Cairo'),
(10, 'Alexandria'),
(20, 'Giza'),
(30, 'Cairo')

INSERT INTO PROJECT (PNAME, PNUM, PLOC, DNUM)
VALUES
('Website Upgrade', 1, 'Cairo', 10),
('New Office Setup', 2, 'Alexandria', 20),
('App Development', 3, 'Cairo', 30),
('Marketing Research', 4, 'Giza', 20)

INSERT INTO WORKS_ON (ESSN, Pnum, HOURS)
VALUES
('123456789', 1, 15),
('333445555', 2, 20),
('987654321', 3, 30),
('555666777', 3, 10),
('333445555', 4, 25)

INSERT INTO DEPENDENT (ESSN, DEPENDENT_NAME, SEX, BDATE, RELATIONSHIP)
VALUES
('123456789', 'Linda', 'F', '2010-07-05', 'Daughter'),
('123456789', 'Michael', 'M', '2012-09-15', 'Son'),
('333445555', 'Omar', 'M', '2016-05-01', 'Son'),
('987654321', 'Hana', 'F', '2014-11-23', 'Daughter')

use Company_SD
------1-------
select * from Employee
------2-------
select fname , lname , salary , dno from Employee
------3-------
Select Pname, Plocation , Departments.Dname
FROM PROJECT 
JOIN Departments  ON Project.Dnum = Departments.Dnum
------4-------
Select fname + ' ' + lname AS FULLNAME,
  (SALARY * 12 * 0.10) AS ANNUAL_COMM
FROM Employee
------5-------
select ssn , fname , lname , salary from Employee
where Salary > 1000
------6-------
select ssn , fname , lname , salary*12 as annual_salary from Employee
where Salary*12 > 10000
------7-------
select fname , lname , salary from Employee 
where sex='f'
------8-------
select Dnum , Dname from Departments
where MGRSSN = 968574
------9-------
select Pnumber , pname , plocation from Project
where Dnum = 10
 


