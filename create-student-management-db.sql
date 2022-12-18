CREATE DATABASE QUANLYSINHVIEN;
USE QUANLYSINHVIEN;
CREATE TABLE CLASS (
ClassID int auto_increment not null primary key,
ClassName varchar(60) not null,
StartDate datetime not null,
Status bit
);
create table student(
StudentID int auto_increment not null primary key,
StudentName varchar(30),
Address varchar(50),
Phone varchar(20),
Status bit,
ClassID int not null,
foreign key (ClassID) references Class (ClassID)
);
create table Subject(
SubID int not null primary key auto_increment,
SubName varchar(30) not null,
Credit tinyint not null default 1 check (credit >= 1),
status bit default 1
);
create table mark(
MarkID int not null auto_increment primary key,
SubID int not null,
StudentID int not null,
Mark float default 0 check (Mark between 0 and 100),
ExamTimes tinyint default 1,
UNIQUE (SubID, StudentID),
FOREIGN KEY (SubID) references Subject(SubID),
FOREIGN KEY (StudentID) references Student(StudentID)
);