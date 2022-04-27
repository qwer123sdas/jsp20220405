SELECT LastName FROM Employees;
SELECT FirstName FROM Employees;

SELECT LastName AS 합집합 FROM Employees
UNION
SELECT FirstName FROM Employees; -- 여러 조회를 합칠 때 사용(합집합)

SELECT LastName, FirstName FROM Employees
UNION
SELECT CustomerName FROM Customers;

SELECT LastName, BirthDate FROM Employees
UNION
SELECT CustomerName, Country FROM Customers; -- ok

SELECT EmployeeID, LastName FROM Employees
UNION
SELECT ProductName, Price FROM Products;


-- 합집합이기 때문에 중복이 없음
-- 중복허용하고 싶으면 UNION ALL사용
SELECT LastName AS 합집합 FROM Employees
UNION ALL
SELECT FirstName FROM Employees; -- 여러 조회를 합칠 때 사용(합집합)



-- 2개 이상의 조회결과 합
SELECT Country FROM Customers
UNION
SELECT Country FROM Suppliers
UNION 
SELECT City FROM Customers;

DESC Customers ;