/*
INTERNSHIP TASK -3
=======================================================================================================================================================================================
DATABASE MIGRATION

MIGRATE DATA BETWEEN TWO DATABASES (E.G., FROM MYSQL TO POSTGRESQL) AND ENSURE DATA INTEGRITY
 =======================================================================================================================================================================================
*/


create database CodTech

use CodTech


create table Salesman (
"Salesmanld" int not null Primary Key,
"SalesmanName" varchar(50),
"Commission" int,
"City" varchar(50) default 'USA',
"Age" int
);

insert into Salesman Values
(101,'John',50,'California',17),
(102,'Simon',75,'Texas',25),
(103,'Jessie',105,'Florida',35),
(104,'Danny',100,'Texas',22),
(105,'Lia',65,'New Jersy',30);


create table Customer (
"Salesmanld" int,
"Customerld" int,
"CustomerName" varchar(50) not null,
"PurchaseAmount" int
);

insert into Customer Values
(101,2345,'Andrew',550),
(103,1575,'Lucky',4500),
(104,2345,'Andrew',4000),
(107,3747,'Remona',2700),
(110,4004,'Julia',4545),
(102,2345,'Eden',550),
(105,1575,'Lucy',4500);


SELECT COUNT(*) FROM Customer;
SELECT COUNT(*) FROM Salesman;