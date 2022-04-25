USE w3schools;

SELECT * FROM Customers ORDER BY ContactName; -- 조회결과 ContactName오름차순 정렬
SELECT * FROM Customers ORDER BY City;

-- ASC : 오름차순(기본값 + 생략가능) / DESC : 내림차순
SELECT * FROM Customers ORDER BY ContactName ASC;
SELECT * FROM Customers ORDER BY ContactName DESC;

-- Country 검색하고 city순 : 여러 열 기준으로 정렬
SELECT * FROM Customers ORDER BY Country, City;
SELECT * FROM Customers ORDER BY Country ASC, City ASC;
SELECT * FROM Customers ORDER BY Country DESC, City ASC;

-- 연습1) 직원(Emplyees)을 생일 내림차순, LastName오름차순 정렬
SELECT * FROM Employees ORDER BY BirthDate DESC, LastName;

-- 연습2) 고객이 있는 나라를 오름차순으로 (단 한번씩마나 결과로 나오도록)
SELECT DISTINCT Country FROM Customers ORDER BY Country;

-- 연습3) 고객이 있는 도시를 오름차순 정렬로 조회(단 한번씩마나 결과로 나오도록)
SELECT DISTINCT* FROM Customers ORDER BY City;

-- Column번호로 정렬 가능
SELECT * FROM Customers ORDER BY 5;
SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country FROM Customers ORDER BY 3;
SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country FROM Customers ORDER BY 7, 5;

