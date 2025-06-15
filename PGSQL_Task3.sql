CREATE TABLE Salesmen (
    "SalesmanId" INT NOT NULL PRIMARY KEY,
    "SalesmanName" VARCHAR(50),
    "Commission" INT,
    "City" VARCHAR(50) DEFAULT 'USA',
    "Age" INT
);

select * from Salesmen


create table Customer (
"Salesmanld" int,
"Customerld" int,
"CustomerName" varchar(50) not null,
"PurchaseAmount" int
);

select * from Customer

SELECT COUNT(*) FROM Customer;
SELECT COUNT(*) FROM Salesmen;