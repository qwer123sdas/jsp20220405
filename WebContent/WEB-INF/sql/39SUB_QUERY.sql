USE w3schools;
DESC Customers;

-- 주문한적 없는 고객명 조회(JOIN) (SUBQUERY)
SELECT c.CustomerName FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL
ORDER BY 1;

SELECT CustomerName FROM Customers 
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders)
ORDER BY 1;

-- 고객별 주문수
SELECT c.CustomerName, COUNT(o.OrderID) 
FROM Customers c LEFT JOIN Orders o 
ON c.CustomerID = o.CustomerID
-- WHERE o.OrderID
GROUP BY c.CustomerID  
-- GROUP BY c.CustomerName
ORDER BY 2 DESC;

SELECT c.CustomerName, 
(SELECT COUNT(o.OrderID) FROM Orders o WHERE o.CustomerID = c.CustomerID) NumOfOrders
FROM Customers c
ORDER BY 2 DESC;

-- 상품명과 카테고리명 조회
-- JOIN
SELECT p.ProductName, c.CategoryName
FROM Products p JOIN Categories c
ON p.CategoryID = c.CategoryID
ORDER BY 1;
-- 서브 쿼리
SELECT p.ProductName, 
       (SELECT CategoryName FROM Categories c WHERE c.CategoryID = p.CategoryID)
FROM Products p 
ORDER BY 1;



DESC Suppliers;
DESC Customers;
-- Suppliers Customers
-- 고객과 공급자가 모두 있는 나라 조회
SELECT distinct c.Country FROM Suppliers s JOIN Customers c
ON s.Country = c.Country
-- group by s.SupplierName
ORDER BY 1
;

SELECT distinct Country
FROM Suppliers
WHERE Country IN (SELECT Country FROM Customers)
ORDER BY 1;
 