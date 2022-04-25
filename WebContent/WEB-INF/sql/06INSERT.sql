USE w3schools;
SELECT * FROM Customers ORDER BY CustomerID DESC;

SELECT * FROM Customers;

SELECT DISTINCT City FROM Customers;

INSERT INTO Customers(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) 
VALUES(92, 'Donald', 'President', 'New York', 'Seattle', '000000', 'USA');

INSERT INTO Customers(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUE(93, 'Son', 'Heung-min', 'Tottenum', 'London', '11111', 'UK');

-- 모든 culmn에 데이터 입력시 culumn명 생략 가능
INSERT INTO Customers
VALUE(94, 'Cha', 'Bum', 'BundesLiga', 'Köln', '12345', 'Germany');

-- DESC : 테이블 Schem조회(DESCRIBE)
DESC Customers;
DESCRIBE Customers;

-- ﻿auto_increment 컬럼은 insert할 때 값 생략 가능함.
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUE('Oscar', 'Isaac', 'london', 'London', 'B-2345', 'UK');

INSERT INTO Customers (Country, PostalCode, City, Address, ContactName, CustomerName)
VALUES('USA', 'A112', 'Seattle', 'Hotel', 'Rap Monstar', 'RM');

SELECT * FROM Employees ORDER BY EmployeeID DESC;
DESC Employees;
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes) 
Values ('Jisung', 'Park', '1999-01-01', 'pic1', 'manchester united');

-- 모든 컬럼을 나열하지 않아도 된다.
INSERT INTO Employees(LastName, FirstName, BirthDate, Notes) VALUES('Lee', 'sunshin', '1900-01-01', 'general'); -- 열 1개를 생략하면 null로 남게됨
-- Null : 값이 없다라는 의미
-- INSERT INTO 할 때, null명시 가능
INSERT INTO Employees(LastName, FirstName, BirthDate, Photo, Notes) VALUES('Harry', 'Kane', '2000-01-01', NULL, 'soccer');