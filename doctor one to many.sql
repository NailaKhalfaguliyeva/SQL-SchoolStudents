
INSERT INTO Doctor(FullName,Age,Department) VALUES('Rafiga Valiyeva',26,'dentist')
INSERT INTO Doctor(FullName,Age,Department) VALUES('Aytac Guliyeva',29,'cosmetologist')
INSERT INTO Doctor(FullName,Age,Department) VALUES('Ayan Mammadova',33,'spinal center')
INSERT INTO Doctor(FullName,Age,Department) VALUES('Aynur Aliyeva',37,'neurologist')

SELECT *
FROM Doctor

INSERT INTO Patients(FullName,complaint,DoctorId) VALUES( 'Aytac Aliyeva','TOOTH PAIN',1)
INSERT INTO Patients(FullName,complaint,DoctorId) VALUES('Naila Khalfaguliyeva','scoliosis',3)
INSERT INTO Patients(FullName,complaint,DoctorId) VALUES('Aysel Osmanova','facial rashes',4)
INSERT INTO Patients(FullName,complaint,DoctorId) VALUES('Gunel Omarova','headache',5)

SELECT *
FROM Patients
JOIN Doctor ON Doctor.Id = Patients.DoctorId

SELECT *
FROM Doctor


INSERT INTO Hospital(Name,Adress,DoctorId) VALUES('Qazax city,big hospital','Azadlig',1)

SELECT name as nameHospital, Adress as AdressHospital , FullName as NameOfDoctor, Age, Department
FROM Hospital
JOIN Doctor ON Doctor.Id = Hospital.DoctorId

delete from Hospital where DoctorId is null

DROP TABLE Patients



UPDATE Doctor
SET Department = 'NESE'
WHERE FullName = 'Ayan Mammadova'

SELECT *
FROM Patients


