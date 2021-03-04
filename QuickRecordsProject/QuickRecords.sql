CREATE DATABASE quickrecordss;
USE quickrecordss;users

CREATE TABLE department(
d_id INT PRIMARY KEY,
Dept_name VARCHAR(30),
Dept_location VARCHAR(30));

DESC department;


CREATE TABLE users(admin
username VARCHAR(30),
password VARCHAR(30),
Type VARCHAR(30));
DESC users;


   CREATE TABLE Admin(
	eid INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(25) NOT NULL,
	last_name VARCHAR(25) NOT NULL,
	contact VARCHAR(10) CHECK(contact REGEXP '^[0-9]{10}$'),
	edoj DATE NOT NULL,
	Dept_id INT NOT NULL,
   designation VARCHAR(30) NOT NULL,
   salary int(50) NOT NULL,
   CONSTRAINT fk_empDepts FOREIGN KEY(Dept_id)
   REFERENCES department(d_id)
	ON DELETE CASCADE 
   ON UPDATE RESTRICT );


INSERT INTO department VALUES (1,'SupportDesk','Hyderabad');

INSERT INTO department VALUES (2,'Network Administrator','NewYork');

INSERT INTO department VALUES (3,'Software Developer','Hyderabad');

INSERT INTO department VALUES (4,'Software Tester','NewYork');

INSERT INTO department VALUES (5,'Security Analyst','NewYork');

INSERT INTO department VALUES (6,'Database Engineer','Hyderabad');

INSERT INTO Admin VALUES (101,'Patterson','William',7473917391,'2021-02-18',2);

INSERT INTO Admin VALUES (102,'Firrelli','Jeff',8973967391,'2021-02-18',3);

INSERT INTO Admin VALUES (103,'Castillo'users,'Pamela',9473947397,'2021-02-18',3);

INSERT INTO Admin VALUES (104,'Marsh','Peter',9477916351,'2021-02-18',1);

INSERT INTO users VALUES('gokul','qwe','admin');
INSERT INTO users VALUES('Michale','abc','user');



SHOW TABLES;admin