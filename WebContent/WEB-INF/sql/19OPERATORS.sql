-- 논리연산
-- = : 같다
SELECT * FROM Customers
WHERE Country = 'Germany';

-- > : 크다. < : 작다. >= 크거나 같다, <= 작거나 같다

-- <> 다르다
SELECT * FROM Customers
WHERE Country <> 'Germany';

SELECT * FROM Customers
WHERE Country != 'Germany';

-- 산술연산
-- + - * /
SELECT 3 + 5;
SELECT 3- 5;
SELECT 3 * 5;
SELECT 3 / 5;

SELECT * FROM Products ORDER BY Price;
-- min 2.5
-- max 263.50
-- 가장 높은 가격과 가장 낮은 가격 차이
SELECT MAX(Price) - MIN(Price) AS 가격차이 FROM Products;


-- 문자열 연결연산A
-- CONCAT함수 사용
SELECT * FROM Customers;
SELECT CustomerName, CONCAT(Country, City, Address) AS Address FROM Customers;
SELECT CustomerName, CONCAT(Country, ' ', City, ' ', Address) AS Address 
FROM Customers;