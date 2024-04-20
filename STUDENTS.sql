CREATE TABLE SchoolStudents(
[name] VARCHAR (255),
[surname] VARCHAR (255),[age] INT) 

SELECT * 
 FROM SchoolStudents

 INSERT INTO SchoolStudents(name,surname,age,average) VALUES('Hamid','Khalfaguliyev',25,75);
 INSERT INTO SchoolStudents(name,surname,age,average) VALUES('Naila','Khalfaguliyeva',26,65);
 INSERT INTO SchoolStudents(name,surname,age,average) VALUES('Dilbar','Salmanova',29,45);
 INSERT INTO SchoolStudents(name,surname,age,average) VALUES('Lala','Khalfaguliyeva',28,53);
 INSERT INTO SchoolStudents(name,surname,age,average) VALUES('Aysel','Valiyeva',18,87);
 INSERT INTO SchoolStudents(name,surname,age,average) VALUES('Narmin','Mammadov',25,97);
 INSERT INTO SchoolStudents(name,surname,age,average) VALUES('Nuran','Nagiyev',16,43);
 INSERT INTO SchoolStudents(name,surname,age,average) VALUES('Leyla','Aliyeva',19,59);
 INSERT INTO SchoolStudents(name,surname,age,average) VALUES('Hanifa','Gojamanova',13,70);
 INSERT INTO SchoolStudents(name,surname,age,average) VALUES('Ayan','Qurbanova',24,65);

ALTER TABLE SchoolStudents
ADD [age] INT 

UPDATE SchoolStudents
SET [age]=13 
WHERE name='Hanifa'

UPDATE SchoolStudents
SET [age]=26
WHERE name='Naila'

UPDATE SchoolStudents
SET [age]=18
WHERE name='Aysel'

UPDATE SchoolStudents
SET [age]=16
WHERE name='Nuran'

DELETE
FROM SchoolStudents
WHERE name='Hanifa'

DELETE
FROM SchoolStudents
WHERE name='Naila'

DELETE
FROM SchoolStudents
WHERE name='Aysel'

DELETE
FROM SchoolStudents
WHERE name='Nuran'

SELECT*
FROM SchoolStudents
WHERE [age] > 18

ALTER TABLE SchoolStudents
ADD [average] INT 

UPDATE SchoolStudents
SET [average]=73 
WHERE name='Naila'

SELECT*
FROM SchoolStudents
WHERE [average] < 50 or [average] > 70

SELECT*
FROM SchoolStudents

DELETE 
FROM SchoolStudents

INSERT INTO SchoolStudents(name,surname,age) VALUES('Elchin','Khalfaguliye',63)

UPDATE SchoolStudents
SET [average]=60
WHERE [name]='Elchin'

ALTER TABLE SchoolStudents
ADD [course] INT

UPDATE SchoolStudents
SET [course]=2
WHERE [name]='Naila'

UPDATE SchoolStudents
SET [course]=1
WHERE [name]='Lala'

UPDATE SchoolStudents
SET [course]=2
WHERE [name]='Dilbar'

UPDATE SchoolStudents
SET [course]=4
WHERE [name]='Hamid'

UPDATE SchoolStudents
SET [course]=2
WHERE [name]='Aysel'

UPDATE SchoolStudents
SET [course]=3
WHERE [name]='Narmin'

UPDATE SchoolStudents
SET [course]=2
WHERE [name]='Nuran'

SELECT*
FROM SchoolStudents
WHERE [course] = 2
