INSERT INTO TeachersAndDepartments(TeacherFullName,DepartmentFullName,TeacherSalary) VALUES('Dave McQueen','Software Developer',3500);
INSERT INTO TeachersAndDepartments(TeacherFullName,DepartmentFullName,TeacherSalary) VALUES('Jack Underhill','Computer Science And Math',2000);
INSERT INTO TeachersAndDepartments(TeacherFullName,DepartmentFullName,TeacherSalary) VALUES('Ken Thompson','Computer Programming',1500);
INSERT INTO TeachersAndDepartments(TeacherFullName,DepartmentFullName,TeacherSalary) VALUES('Brendan Eich','Biomedical Technology Engineer',1000);


DELETE  FROM TeachersAndDepartments
WHERE TeacherFullName= 'Dave McQueen'

INSERT INTO ClassRooms(ClassRoomNumber) VALUES(201);
INSERT INTO ClassRooms(ClassRoomNumber) VALUES(123);
INSERT INTO ClassRooms(ClassRoomNumber) VALUES(96);
INSERT INTO ClassRooms(ClassRoomNumber) VALUES(115);

INSERT INTO Faculties(FacultyName) VALUES('Computer Science');
INSERT INTO Faculties(FacultyName) VALUES('Technology');
INSERT INTO Faculties(FacultyName) VALUES('Technology');
INSERT INTO Faculties(FacultyName) VALUES('Biomedical Technique');


INSERT INTO Groups(GroupName,StudentName,SubjectName) VALUES('365A2','Niklaus Wirth','Technical Mathematics');
INSERT INTO Groups(GroupName,StudentName,SubjectName) VALUES('365A1','Brendan Eich','Fundamentals of Computer Science');
INSERT INTO Groups(GroupName,StudentName,SubjectName) VALUES('243R3','Bill Gates','Introduction To Programming');
INSERT INTO Groups(GroupName,StudentName,SubjectName) VALUES('532R1','James Arthur Gosling','Human Anatomy And Physiology');


INSERT INTO  Weeklyprogram(TeacherId,DepartmentId,ClassRoomId,FacultyId,GroupsId,DaysOfTheWeek,LectureName,Auditorium) 
VALUES(2,3,1,3,4,'Monday','LectureName1','Auditorium1');
INSERT INTO  Weeklyprogram(TeacherId,DepartmentId,ClassRoomId,FacultyId,GroupsId,DaysOfTheWeek,LectureName,Auditorium) 
VALUES(2,3,1,3,4,'Tuesday','LectureName2','Auditorium2');
INSERT INTO  Weeklyprogram(TeacherId,DepartmentId,ClassRoomId,FacultyId,GroupsId,DaysOfTheWeek,LectureName,Auditorium) 
VALUES(2,3,1,3,4,'Wednesday','LectureName3','Auditorium3');
INSERT INTO  Weeklyprogram(TeacherId,DepartmentId,ClassRoomId,FacultyId,GroupsId,DaysOfTheWeek,LectureName,Auditorium) 
VALUES(2,3,1,3,4,'Thursday','LectureName4','Auditorium4');
INSERT INTO  Weeklyprogram(TeacherId,DepartmentId,ClassRoomId,FacultyId,GroupsId,DaysOfTheWeek,LectureName,Auditorium) 
VALUES(2,3,1,3,4,'Friday','LectureName5','Auditorium5');
INSERT INTO  Weeklyprogram(TeacherId,DepartmentId,ClassRoomId,FacultyId,GroupsId,DaysOfTheWeek,LectureName,Auditorium) 
VALUES(2,3,1,3,4,'Saturday','LectureName6','Auditorium6');
INSERT INTO  Weeklyprogram(TeacherId,DepartmentId,ClassRoomId,FacultyId,GroupsId,DaysOfTheWeek,LectureName,Auditorium) 
VALUES(2,3,1,3,4,'Sunday','LectureName7','Auditorium7');



----1----“Software Development” şöbəsində müəllimlərin sayını göstərin.
SELECT  COUNT(TeacherFullName) AS TeacherNumber
FROM TeachersAndDepartments
WHERE DepartmentFullName='Software Developer'


SELECT *
FROM TeachersAndDepartments

----2----“Dave McQueen” müəllimin verdiyi mühazirələrin sayını çap edin.
SELECT COUNT(LectureName) AS LectureNumber
FROM Weeklyprogram
JOIN TeachersAndDepartments ON  Weeklyprogram.TeacherId = TeachersAndDepartments.Id
WHERE TeacherFullName='Dave McQueen'



----3----"201" otağında keçirilən dərslərin sayını göstərin.

SELECT COUNT(SubjectName) AS SubjectNumber
FROM Groups
JOIN ClassRooms ON Groups.Id =ClassRooms.Id
WHERE ClassRoomNumber=201


----4----Sinif otaqlarının adlarını və onlarda keçirilən mühazirələrin sayını göstərin.(adlari gostermir)

SELECT COUNT(LectureName) AS LectureNumber
FROM Weeklyprogram
JOIN ClassRooms ON Weeklyprogram.Id=ClassRooms.Id
GROUP BY ClassRoomNumber



----5----“Jack Underhill” müəlliminin mühazirələrində iştirak edən tələbələrin sayını çap edin.
SELECT COUNT(StudentName) AS StudentNumber
FROM Groups
JOIN TeachersAndDepartments ON Groups.Id=TeachersAndDepartments.Id
WHERE TeacherFullName='Jack Underhill'



----6----Kompüter elmləri fakültəsində müəllimlərin orta əmək haqqını tapın.
SELECT AVG(TeacherSalary) AS TeacherSalary
FROM TeachersAndDepartments
JOIN Faculties ON TeachersAndDepartments.Id=Faculties.Id
WHERE FacultyName='Computer Science'

----7----Bütün qruplar arasında tələbələrin minimum və maksimum sayını çap edin. 
SELECT COUNT(StudentName) AS STUDENTNAME
FROM Groups




----8----Departamentlər üzrə orta maliyyələşdirmə fondunu göstərin.
SELECT AVG(TeacherSalary) AS TEACHERSALARY
FROM TeachersAndDepartments
GROUP BY DepartmentFullName




----9----Müəllimlərin tam adlarını və onların tədris etdikləri fənlərin sayını göstərin. 
SELECT COUNT(SubjectName) AS SUBJECTNUMBER
FROM Groups
JOIN TeachersAndDepartments ON Groups.Id=Groups.Id
GROUP BY  TeacherFullName 




----10---Həftənin hər günü mühazirələrin sayını çap edin.



----11---Sinif otaqlarının nömrələrini və mühazirələri oxunan kafedraların sayını göstərin. 
SELECT COUNT(DepartmentFullName) AS DepartmentFullNUMBER
FROM TeachersAndDepartments
JOIN ClassRooms ON TeachersAndDepartments.Id=TeachersAndDepartments.Id
GROUP BY ClassRoomNumber



----12---Fakültələrin adlarını və onlarda tədris olunan fənlərin sayını göstərin. 

SELECT COUNT(SubjectName) AS SUBJECTNUMBER
FROM Groups
JOIN Faculties ON Groups.Id=Groups.Id
GROUP BY FacultyName





----13---Hər bir müəllim-auditoriya cütü üçün mühazirələrin sayını çap edin.