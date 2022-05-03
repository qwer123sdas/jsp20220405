USE w3schools;

-- 특정 카테고리만 뽑는다.(Bverages 카테로기에 있는 상품들을 조회)
SELECT * FROM Products p JOIN Categories c 
ON p.CategoryID = c.CategoryID
WHERE c.CategoryID = 1
;

DESC Condiments;
-- 카테고리 이름 중 Condiments 카테고리에 있는 상품들 조회
SELECT * FROM Products p JOIN Categories c 
ON p.CategoryID = c.CategoryID
WHERE c.CategoryName = 'Condiments'
;

-- 1996년 7월 4일에 주문한 고객의 이름 조회
SELECT c.CustomerName FROM Orders o JOIN Customers c 
ON o.CustomerID = c.CustomerID
WHERE OrderDate = '1996-07-04';






