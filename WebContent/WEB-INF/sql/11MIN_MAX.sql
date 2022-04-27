SELECT * FROM Products;
SELECT * FROM Products ORDER BY Price;

SELECT MIN(Price) FROM Products;
SELECT MAX(Price) FROM Products;

-- 문자형식에도 적용 가능 ( 사전 순)
SELECT MIN(LastName) FROM Employees;
SELECT MAX(LastName) FROM Employees;
SELECT * FROM Employees ORDER BY LastName;

-- 날짜 형식
SELECT MIN(BirthDate) FROM Employees;
SELECT MAX(BirthDate) FROM Employees;

-- 날짜와 이름 둘다 출력 가능(쿼리 안의 쿼리)
SELECT * FROM Employees WHERE BirthDate = (SELECT MIN(BirthDate) FROM Employees);
SELECT * FROM Employees ORDER BY BirthDate LIMIT 1;

-- 문제 ) 가장 가격이 비싼 상품의 이름을 조회
SELECT * FROM Products WHERE Price = (SELECT MAX(Price) FROM Products);
SELECT * FROM Products ORDER BY Price DESC LIMIT 1;

SELECT MIN(Price) FROM Products;