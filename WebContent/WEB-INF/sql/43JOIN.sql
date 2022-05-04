USE w3schools;
DESC Orders;

SELECT * FROM Orders;
-- 1996년 7월 4일에 주문한 고객 이름 찾기
SELECT o.OrderDate, c.CustomerName, o.EmployeeID
FROM Orders o 
JOIN Customers c 
ON o.CustomerID = c.CustomerID
WHERE o.OrderDate = '1996-07-04';

-- 1996.07.04에 주문한 고객의 이름과 처리한 직원 이름
-- concat : ????
; 

-- 1996.7.4의 주SELECT o.OrderDate, c.CustomerName, concat(e.FirstName, ' ', e.LastName) EmployeeName
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
				JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate = '1996-07-04'문을 처리한 직원명과 배송자 명 조회
SELECT o.OrderDate, concat(e.FirstName, ' ', e.LastName) EmployeeName, s.ShipperName
FROM Orders o JOIN Employees e ON o.EmployeeID = e.EmployeeID
				JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate = '1996-07-04';

-- 1996.7.4의 주문한 고객과, 처리한 직원과 배송한 배송자 명
SELECT o.OrderDate, c.CustomerName, concat(e.FirstName, ' ', e.LastName) EmployeeName, s.ShipperName
FROM Orders o JOIN Employees e ON o.EmployeeID = e.EmployeeID
				JOIN Shippers s ON o.ShipperID = s.ShipperID
                JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate = '1996-07-08';

-- 1996-07-04에 주문한 상품명(들)
SELECT o.OrderDate, p.ProductName, od.Quantity, p.Price, (od.Quantity * p.Price) total
FROM OrderDetails od JOIN Orders o ON o.OrderID = od.OrderID
				JOIN Products p ON od.ProductID = p.ProductID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-08에 각 고객의 주문 총액
SELECT o.OrderDate, c.CustomerName, SUM(od.Quantity * p.Price) total
FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
					JOIN Orders o ON o.OrderID = od.OrderID
					JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE OrderDate = '1996-07-08'
GROUP BY c.CustomerName;

--  1996년 가장 많은 주문을 받은 직원을 뽑기
-- 1996년 직원별 처리한 주문 총 금액을 조회(금액이 높은  -> 낮은 순으로 출력)
SELECT concat(e.FirstName, ' ', e.LastName) Name, SUM(od.Quantity * p.Price) total
FROM Orders o JOIN Employees e ON o.EmployeeID = e.EmployeeID
				JOIN OrderDetails od ON o.OrderID = od.OrderID
				JOIN Products p ON od.ProductID = p.ProductID
WHERE o.OrderDate BETWEEN '1996-01-01' AND '1996-12-31'
GROUP BY e.EmployeeID  -- EmployeeName은 중복이 있을 수 있으므로 ID가 나음
ORDER BY total DESC; 


-- 가장 많은 상품수량이 팔린 카테고리
SELECT p.ProductName, SUM(od.Quantity) total
FROM Categories c JOIN Products p ON c.CategoryID = p.CategoryID
					JOIN OrderDetails od ON od.ProductID = p.ProductID
                    JOIN Orders o ON o.OrderID = od.OrderID
WHERE o.OrderDate
GROUP BY p.ProductName
ORDER BY 2 DESC
;