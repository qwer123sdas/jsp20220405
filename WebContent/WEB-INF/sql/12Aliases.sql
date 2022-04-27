USE w3schools;

-- ALias : 별칭
-- 쿼리 내에서만 컬럼이나 테이블에 다른 이름을 줄 수 있음(실제 테이블은 안바뀜)
-- 조회할 때만 컬럼 이름이 바뀜
SELECT MIN(Price) AS smallest_price FROM Products;
SELECT MAX(Price) AS Max_Price FROM Products;

SELECT LastName AS name, BirthDate AS birth, Photo FROM Employees;

-- AS 키워드는 생략가능
SELECT LastName name, BirthDate birth, Photo FROM Employees;


-- 조인
SELECT * FROM Products;
SELECT * FROM Categories;

SELECT ProductName, CategoryName 
FROM Products JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- 조인
SELECT ProductName, CategoryName 
FROM Products AS a JOIN Categories AS c ON a.CategoryID = c.CategoryID;

-- 테이블에 별칭 줄 떄 조인
SELECT ProductName, CategoryName 
FROM Products AS a JOIN Categories AS c ON a.CategoryID = c.CategoryID;

-- 테이블에 별칭 줄 떄 조인(AS생략)
SELECT ProductName, CategoryName 
FROM Products a JOIN Categories  c ON p.CategoryID = c.CategoryID;
