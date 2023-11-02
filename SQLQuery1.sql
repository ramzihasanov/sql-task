CREATE DATABASE HOLDING
USE  HOLDING

/* ONE TO ONE */

CREATE TABLE DepartmentS (
    DepartmentID INT PRIMARY KEY IDENTITY,
    DepartmentName VARCHAR(30),
)
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY,
    EmployeeName VARCHAR(30),
    DepartmentID INT FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
)

SELECT * FROM Employees;
SELECT * FROM DepartmentS;



INSERT INTO Departments  VALUES
('SIRAB'),
('AZERCELL'),
('NAXTELL')

INSERT INTO Employees  VALUES
('ELI', 1),
('HESEN', 2),
('HUSEN', 3)



/* ONE TO MANY */

CREATE TABLE Employees2 (
    EmployeeID INT PRIMARY KEY  IDENTITY,
    EmployeeName VARCHAR(30),
    DepartmentID INT  FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
    
)

CREATE TABLE Departments2 (
    DepartmentID INT PRIMARY KEY  IDENTITY,
    DepartmentName VARCHAR(30),
    
  
)


INSERT INTO Departments2  VALUES
('SIRAB'),
('AZERCELL'),
('NAXTELL')

INSERT INTO Employees2  VALUES
('ELI', 1),
('HESEN', 2),
('HUSEN', 3),
('REMZI', 1),
('RAFIK', 2),
('VUQAR', 3)


SELECT * FROM Employees2;
SELECT * FROM Departments2;

SELECT * FROM Departments2
INNER JOIN Employees2
ON Departments2.DepartmentID = Employees2.EmployeeID

SELECT * FROM Departments2
RIGHT JOIN Employees2
ON Departments2.DepartmentID = Employees2.EmployeeID
SELECT * FROM Departments2
LEFT JOIN Employees2
ON Departments2.DepartmentID = Employees2.EmployeeID

SELECT * FROM Departments2
FULL JOIN Employees2
ON Departments2.DepartmentID = Employees2.EmployeeID

SELECT * FROM Departments2
CROSS JOIN Employees2


