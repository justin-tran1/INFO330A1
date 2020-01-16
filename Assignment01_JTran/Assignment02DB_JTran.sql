/*
--*************************************************************************--
-- Title: INFO 330 Database Systems and Design
-- Author: Justin Tran
-- Desc: Creating a database with constraints and normalization
-- Change Log: When,Who,What
-- 2020-01-16, Justin Tran, Created File
--**************************************************************************--
*/

/*
DROP TABLE Projects;
DROP TABLE Employees;
DROP TABLE Hours;
-- This drops the tables, just testing
*/
/*
USE master
IF EXISTS(
          SELECT Name
          FROM Sysdatabases
          WHERE Name = 'Assignment01DB_JustinTran')
BEGIN
DROP DATABASE Assignment01DB_JustinTran;
END
-- Talked about in class, this makes a new database everytime, no errors when running
*/

--CREATE DATABASE Assignment01DB_JustinTran; -- Makes database, run once

CREATE TABLE dbo.Projects(
    ProjectID int Primary Key,
    ProjectName varchar(30) NULL,
    ProjectDescription varchar(100) NULL
);
INSERT INTO Projects (ProjectID, ProjectName, ProjectDescription)
 VALUES (1, 'Accounting DB Upgrade', 'Upgrade the Accounting Database to our new SQL 2...'),
    (2, 'Accounting Application Upgrade', 'Modify our existing Accounting Application to connect...');

CREATE TABLE dbo.Employees(
	EmployeeID int Primary Key,
  ProjectID int,
	FirstName varchar(20) NULL,
	LastName varchar(20) NULL
);
INSERT INTO Employees (EmployeeID, ProjectID, FirstName, LastName)
 VALUES (1, 1, 'Bob', 'Smith'), (2, 2, 'Sue', 'Jones');

CREATE TABLE dbo.Hours(
	HourID int Primary Key,
  EmployeeID int,
	DateWorked varchar(50) NULL,
	HoursWorked decimal(10, 2) NULL
);
INSERT INTO Hours (HourID, EmployeeID, DateWorked, HoursWorked)
 VALUES (1, 1, '2017-01-01 00:00:00.000', 6.00), (2, 1, '2017-01-02 00:00:00.000', 4.00),
    (3, 2, '2017-01-01 00:00:00.000', 5.50), (4, 2, '2017-01-02 00:00:00.000', 6.00);
