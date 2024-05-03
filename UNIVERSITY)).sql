CREATE DATABASE University

CREATE TABLE TeachersAndDepartments(
Id INT PRIMARY KEY IDENTITY(1,1),
TeacherFullName NVARCHAR(55),
DepartmentFullName NVARCHAR(43),
TeacherSalary INT,
);

CREATE TABLE ClassRooms(
Id INT PRIMARY KEY IDENTITY(1,1),
ClassRoomNumber INT,
);

CREATE TABLE Faculties(
Id INT PRIMARY KEY IDENTITY(1,1),
FacultyName NVARCHAR(68),
);

CREATE TABLE Groups(
Id INT PRIMARY KEY IDENTITY(1,1),
GroupName NVARCHAR(78),
StudentName NVARCHAR(87),
SubjectName NVARCHAR(56),

);

CREATE TABLE Weeklyprogram(
Id INT PRIMARY KEY IDENTITY(1,1),
TeacherId INT FOREIGN KEY REFERENCES TeachersAndDepartments(Id),
DepartmentId  INT FOREIGN KEY REFERENCES TeachersAndDepartments(Id),
ClassRoomId INT FOREIGN KEY REFERENCES ClassRooms(Id),
FacultyId INT FOREIGN KEY REFERENCES Faculties(Id),
GroupsId INT FOREIGN KEY REFERENCES Groups(Id),
DaysOfTheWeek NVARCHAR(97),
LectureName NVARCHAR(34),
Auditorium NVARCHAR(87),
);

