USE w3schools;

SELECT * FROM Products;

-- 각 카테고리별 상품 수 
SELECT CategoryID, Count(ProductID) 
FROM Products
GROUP BY CategoryID;

-- 카테고리의 이름까지 가져오기
SELECT c.CategoryID, c.CategoryName, COUNT(p.ProductID) 
FROM Products p JOIN Categories c
ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryID;

-- 고객별 주문 건수
DESC Orders;
DESC Customers;
-- 조회 컬럼명(고객명, 주문수)
SELECT c.CustomerID, c.CustomerName, COUNT(o.OrderID)
FROM Customers c JOIN Orders o
ON c.CustomerID = o.CustomerID 
GROUP BY c.CustomerID
ORDER BY 3 DESC;

SELECT c.CustomerID, c.CustomerName, COUNT(o.OrderID)  NumOfOrders
FROM Orders o JOIN Customers c
ON o.CustomerID = c.CustomerID
group by c.CustomerID
ORDER BY 3 DESC;

