/** EmployeeDatabase creation **/

-- Create the database
-- CREATE DATABASE IF NOT EXISTS EmployeeDB;
-- USE EmployeeDB;




-- Create the Departments table
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY AUTO_INCREMENT,
    DeptName VARCHAR(255) NOT NULL,
    Location VARCHAR(255)
);

-- Create the Employees table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE,
    PhoneNumber VARCHAR(20),
    HireDate DATE,
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

-- Create the Compensations table (example - can be expanded)
CREATE TABLE Compensations (
    CompensationID INT PRIMARY KEY AUTO_INCREMENT,
    EmpID INT,
    EffectiveDate DATE,
    Salary DECIMAL(10, 2),
    Bonus DECIMAL(10, 2),
    FOREIGN KEY (EmpID) REFERENCES Employees(EmpID)
);

-- Sample data insertion
INSERT INTO Departments (DeptName, Location) VALUES
('Sales', 'New York'),
('Marketing', 'Los Angeles'),
('Engineering', 'San Francisco');

INSERT INTO Employees (FirstName, LastName, Email, PhoneNumber, HireDate, DeptID) VALUES
('John', 'Doe', 'john.doe@example.com', '555-1234', '2023-01-15', 3),
('Jane', 'Smith', 'jane.smith@example.com', '555-5678', '2023-03-10', 2),
('Peter', 'Jones', 'peter.jones@example.com', '555-9012', '2023-05-20', 1),
('Jack', 'Samuel', 'jack.samuel@example.com', '555-9012', '2023-05-20', 1),
('Jin', 'Jones', 'jin.jones@example.com', '555-9012', '2023-05-20', 2);

INSERT INTO Compensations (EmpID, EffectiveDate, Salary, Bonus) VALUES
(1, '2023-01-15', 60000.00, 5000.00),
(2, '2023-03-10', 70000.00, 7000.00),
(3, '2023-05-20', 65000.00, 6000.00),
(4, '2023-05-20', 75000.00, 6000.00),
(5, '2023-05-20', 70000.00, 6000.00);



