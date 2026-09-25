
Step 1: Create the database
Open MySQL Workbench → SQL Editor and run:
CREATE DATABASE CollegeDB;
USE CollegeDB;
Step 2: Create the DEPARTMENT table
	CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
Step 3: Create the FACULTY table
CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);
Step 4: Create the COURSE table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    FacultyID INT,
    FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
);
Step 5: Create the STUDENT table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    CourseID INT,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);
Step 6: Insert Department data
INSERT INTO Department VALUES
(1, 'Computer Science'),
(2, 'Information Technology');
Step 7: Insert Faculty data
INSERT INTO Faculty VALUES
(101, 'Kumar', 1),
(102, 'Priya', 1),
(103, 'Ravi', 2);
Step 8: Insert Course data
INSERT INTO Course VALUES
(201, 'Java', 101),
(202, 'DBMS', 102),
(203, 'Python', 103);
Step 9: Insert Student data
INSERT INTO Student VALUES
(1001, 'Arun', 201),
(1002, 'Divya', 202),
(1003, 'Karthik', 203);
Step 10: Display the normalized tables
SELECT * FROM Department;
SELECT * FROM Faculty;
SELECT * FROM Course;
SELECT * FROM Student;
You will get four separate tables. 
If you want to see the original information together
Use JOIN:
SELECT
    s.StudentID,
    s.StudentName,
    c.CourseName,
    f.FacultyName,
    d.DepartmentName
FROM Student s
JOIN Course c ON s.CourseID = c.CourseID
JOIN Faculty f ON c.FacultyID = f.FacultyID
JOIN Department d ON f.DepartmentID = d.DepartmentID;

Expected output
StudentID
StudentName
CourseName
FacultyName
DepartmentName
1001
Arun
Java
Kumar
Computer Science
1002
Divya
DBMS
Priya
Computer Science
1003
Karthik
Python
Ravi
Information Technology


Step 1: Create the database
Open MySQL Workbench → SQL Editor and run:
CREATE DATABASE CollegeDB;
USE CollegeDB;
Step 2: Create the DEPARTMENT table
	CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
Step 3: Create the FACULTY table
CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);
Step 4: Create the COURSE table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    FacultyID INT,
    FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
);
Step 5: Create the STUDENT table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    CourseID INT,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);
Step 6: Insert Department data
INSERT INTO Department VALUES
(1, 'Computer Science'),
(2, 'Information Technology');
Step 7: Insert Faculty data
INSERT INTO Faculty VALUES
(101, 'Kumar', 1),
(102, 'Priya', 1),
(103, 'Ravi', 2);
Step 8: Insert Course data
INSERT INTO Course VALUES
(201, 'Java', 101),
(202, 'DBMS', 102),
(203, 'Python', 103);
Step 9: Insert Student data
INSERT INTO Student VALUES
(1001, 'Arun', 201),
(1002, 'Divya', 202),
(1003, 'Karthik', 203);
Step 10: Display the normalized tables
SELECT * FROM Department;
SELECT * FROM Faculty;
SELECT * FROM Course;
SELECT * FROM Student;
You will get four separate tables. 
If you want to see the original information together
Use JOIN:
SELECT
    s.StudentID,
    s.StudentName,
    c.CourseName,
    f.FacultyName,
    d.DepartmentName
FROM Student s
JOIN Course c ON s.CourseID = c.CourseID
JOIN Faculty f ON c.FacultyID = f.FacultyID
JOIN Department d ON f.DepartmentID = d.DepartmentID;

Expected output
StudentID
StudentName
CourseName
FacultyName
DepartmentName
1001
Arun
Java
Kumar
Computer Science
1002
Divya
DBMS
Priya
Computer Science
1003
Karthik
Python
Ravi
Information Technology




