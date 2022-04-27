USE w3schools;

SELECT COUNT(ProductID) FROM Products; -- NULL은 카운터 하지 않음
SELECT * FROM Employees;

INSERT INTO Employees (LastName, BirthDate, Photo, Notes)
VALUES('SON', '1999-01-01', 'pic1', 'soccer');
SELECT * FROM Employees;

SELECT COUNT(LastName) FROM Employees;
SELECT COUNT(FirstName) FROM Employees;

SELECT DISTINCT LastName FROM Employees;
SELECT COUNT(DISTINCT LastName) FROM Employees;
SELECT COUNT(DISTINCT LastName) num_of_last_name FROM Employees;

-- avg
SELECT AVG(Price) FROM Products;
SELECT AVG(Price) AS avg_price  FROM Products;

-- sum
SELECT SUM(Price) FROM Products;
SELECT SUM(Price) 가격합계 FROM Products;