USE w3schools;
DESC Products;
SELECT * FROM Products;
DESC Categories;

SELECT * FROM Categories;

SELECT * FROM Products JOIN Categories; -- Cartesian
SELECT * FROM Products JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- products 테이블과 supliers테이블을 SupplierId컬럼이 같은 것 끼리 INNER JOIN한 결과를 조회
SELECT * FROM Products JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;

-- 별칭과 같이 사용
SELECT * FROM Products AS p JOIN Suppliers AS s ON p.SupplierID = s.SupplierID;
SELECT * FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID;

-- 필요한 컬럼만
SELECT ProductName, Unit, Price, SupplierName FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID;
-- 중복컬렴명을 사용 시 테이블명을 꼭 작성해야함.
SELECT ProductName, Unit, Price, s.SupplierID FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID;

-- 고객과 공급자가 모두 있는 나라를 조회
SELECT distinct Country FROM Customers; -- 고객이 있는 나라들
SELECT distinct Country FROM Suppliers; -- 공급자가 있느 나라들

SELECT * FROM Customers c JOIN Suppliers s ON c.Country = s.Country 
ORDER BY c.Country;
SELECT distinct c.Country FROM Customers c JOIN Suppliers s ON c.Country = s.Country 
ORDER BY c.Country;
SELECT distinct s.Country FROM Customers c JOIN Suppliers s ON c.Country = s.Country 
ORDER BY c.Country;
