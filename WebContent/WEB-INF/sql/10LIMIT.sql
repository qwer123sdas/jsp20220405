select * FROM Customers LIMIT 3; -- 조회 결과 중 첫번 째 3개 레코드만
SELECT * FROM Customers LIMIT 5;

SELECT * FROM Employees LIMIT 2;
SELECT * FROM Employees order by BirthDate LIMIT 2;
SELECT * FROM Employees ORDER BY BirthDate DESC LIMIT 2;

-- Products 테이블 조회해서 가장 가격이 비싼 상품 3개 조회
SELECT * FROM Products order by Price desc LIMIT 3;

-- LIMIT [부터], [몇개까지]
SELECT * FROM Products order by Price desc LIMIT 0, 3;
-- Products 테이블에서 두번쨰로 가격이 비싼 상품~4번째로 가격이 비싼 상품까지 조회
SELECT * FROM Products order by Price desc LIMIT 1,3;

-- 직원 중 두번째로 나이가 많은 사람 조회
SELECT * FROM Employees ORDER BY BirthDate limit 1,1;
-- 직원중 두번쨰로 나이가 어린 사람 조회
SELECT * FROM Employees ORDER BY BirthDate desc limit 1,1;

select count(*) FROM Customers;
desc Customers;
INSERT INTO Customers(CustomerName, ContactName, Address, City, PostalCode,Country)
(SELECT CustomerName, ContactName, Address, City, PostalCode,Country FROM Customers);

-- 페이징 처리(한 페이지에 10개)
SELECT * FROM Customers ORDER BY CustomerID LIMIT 0, 10; -- 1페이지
SELECT * FROM Customers ORDER BY CustomerID LIMIT 10, 20; -- 2페이지


