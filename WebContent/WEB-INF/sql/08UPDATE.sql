USE w3schools;
-- safe mode 해제
SET SQL_SAFE_UPDATES = 0;


SELECT * FROM Employees;
DESC Employees;

-- Key 가 PRI인 것으로만 WHERE로 설정가능
UPDATE Employees
SET LastName = 'sunja', 
	FirstName = 'YhJung'
WHERE EmployeeID = 1;

-- 예제 1) 1번 고객(Customers Table)의 계약자명(ContactName)은 'Alfred Schmidt'
-- 도시(City)는 'FrankFurt'로 변경

DESC Customers;
SELECT * FROM Customers ORDER BY CustomerID; 

UPDATE Customers SET ContactName = 'Alfred Schmidt', City = 'FrankFurt'
WHERE CustomerID = 1;

SELECT * FROM Customers WHERE Country = 'Mexico';

UPDATE Customers SET ContactName = 'JUAN'
WHERE Country = 'Mexico';


SELECT * FROM Products;

UPDATE Products
SET Price = Price + 2;