USE w3schools;

SELECT * FROM Customers;
SELECT COUNT(CustomerID) FROM Customers;
SELECT Country, COUNT(CustomerID) FROM Customers GROUP BY Country;
SELECT Country, COUNT(CustomerID) FROM Customers GROUP BY Country ORDER BY Country;

SELECT Country, COUNT(CustomerID) count
FROM Customers
GROUP BY Country
ORDER BY count, Country;

INSERT INTO Customers (CustomerName, City) VALUES('SON', 'Seoul');

-- 가장많은 고객이 있는 도시를 조회
SELECT City, COUNT(CustomerID) count FROM Customers GROUP BY City 
HAVING count =  
(
SELECT COUNT(CustomerID) AS count FROM Customers 
GROUP BY City ORDER BY count DESC LIMIT 1
);

-- GROUP BY : 2개 이상의 컬럼으로도 사용 가능함
SELECT * FROM Orders ORDER BY OrderDate;

-- 날짜별 몇개의 주문이 있는지
SELECT OrderDate, COUNT(OrderID)
FROM Orders
GROUP BY OrderDate
ORDER BY OrderDate;

-- 날짜별, 직원별로 몇개의 주문이 있는지?
SELECT OrderDate, EmployeeID, COUNT(OrderID)
FROM Orders
GROUP BY OrderDate, EmployeeID
ORDER BY OrderDate, EmployeeID;
