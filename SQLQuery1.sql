CREATE DATABASE Hospital

Use Hospital

CREATE TABLE Patients (
		Id int primary key identity,
		Name nvarchar(50),
		Surname nvarchar(100),
		Age int
);
CREATE TABLE Doctors (
		Id int primary key,
		Name nvarchar(50),
		Surname nvarchar(100),
		Age int,
		Department int,
		Salary decimal(4,3 )
);

ALTER TABLE Doctors
Add DepartmentId int FOREIGN KEY references Departments(Id)

CREATE TABLE Departments (
		Id int primary key,
		Name nvarchar(50)
);
CREATE TABLE Diseases (
		Id int primary key,
		Name nvarchar(50)
);
CREATE TABLE Rooms (
		Id int primary key,
		Name nvarchar(50),
		RoomTypeId int
);
ALTER TABLE Rooms
Add RoomTypeIdId int FOREIGN KEY references RoomTypes(Id)

CREATE TABLE RoomTypes (
		Id int primary key,
		Name nvarchar(50)
);
CREATE TABLE Meetings (
		Id int primary key,
		DoctorId  int references Doctors(Id),
		PatientId int,
		Date datetime,
		RoomId int,
		Price decimal,
		IsHealed bit,
		DesiaseId int

);
DROP TABLE Meetings
ALTER TABLE Meetings
Add DoctorId int FOREIGN KEY references Doctors(Id) 

ALTER TABLE Meetings
Add DesiaseId int FOREIGN KEY references Desiases(Id)

ALTER TABLE Meetings
Add PatientId int FOREIGN KEY references Patients(Id)

ALTER TABLE Meetings
Add RoomId int FOREIGN KEY references Rooms(Id)

