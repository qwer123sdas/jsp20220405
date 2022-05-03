USE w3schools;

DESC Orders;
DESC Customers;
-- Orders : 주문, Costomers : 고객
--  주문한 적 없는 고객명 조회
SELECT c.CustomerName, o.* FROM Customers c LEFT JOIN Orders o ON o.CustomerID = c.CustomerID
WHERE o.OrderID IS NULL
ORDER BY 1;

-- 고객별 주문 건수를 0건도 나오도록 하기
SELECT c.CustomerName, COUNT(o.OrderID) count 
FROM Customers c LEFT JOIN Orders o 
ON o.CustomerID = c.CustomerID
group by c.CustomerName
ORDER BY 2 DESC;

USE mydb2;

SELECT * FROM Board;
SELECT b.id, b.title, b.body, b.inserted, COUNT(r.id) numOfReply
FROM Board b LEFT JOIN Reply r On b.id = r.board_id
where b.id =  5;


-- 서브쿼리

