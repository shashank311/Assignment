CREATE DATABASE ASSIGNMENT_1;
USE ASSIGNMENT_1;

-- Table for Employees
CREATE TABLE Employees (
    EID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

-- Inserting values
INSERT INTO Employees VALUES
(1, 'Amit', 'IT', 60000),
(2, 'Priya', 'HR', 45000),
(3, 'Ravi', 'Finance', 55000),
(4, 'Sneha', 'IT', 70000),
(5, 'Ankit', 'HR', 33000),
(6, 'Baljeet', 'Finance', 45000),
(7, 'Chandni', 'Admin', 22000),
(8, 'Dhanveer', 'IT', 41000),
(9, 'Eric', 'Security', 55000),
(10, 'Fawad', 'Support', 27000);

SELECT * FROM Employees;

-- Table for Projects
CREATE TABLE Projects (
    ProjID INT PRIMARY KEY,
    ProjName VARCHAR(100),
    EmpID INT,
    Status VARCHAR(20)
);

-- Inserting values
INSERT INTO Projects VALUES
(101, 'Data Engineering', 1, 'Not Started'),
(102, 'ETL', 2, 'Ongoing'),
(103, 'Budget Analysis', 3, 'Completed'),
(104, 'End to end pipeline', 4, 'Ongoing'),
(105, 'PySpark', 6, 'Completed'),
(106, 'DevOps', 5, 'Ongoing'),
(107, 'CICD', 7, 'Completed'),
(108, 'Databricks', 8, 'Ongoing'),
(109, 'Cloud Migration', 9, 'Not Started'),
(110, 'PowerBI', 10, 'Completed');

SELECT * FROM Projects;

-- Using WHERE with AND

SELECT * FROM Employees
WHERE Department = 'IT' AND Salary > 20000;

-- Using WHERE with OR

SELECT * FROM Employees
WHERE Department = 'HR' OR Salary < 50000;

-- Using WHERE with NOT

SELECT * FROM Projects
WHERE NOT Status = 'Completed';

-- Using ORDER BY

SELECT * FROM Employees
ORDER BY Salary DESC;

-- Using LIKE

SELECT * FROM Projects
WHERE ProjName LIKE '%Cloud%';

SELECT * FROM Projects
WHERE ProjName LIKE '%Pipeline%';

SELECT * FROM Projects
WHERE ProjName like 'E%';
