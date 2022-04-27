SELECT * FROM Customers;

SELECT Country, COUNT(CustomerID) count FROM Customers
WHERE count = 6  -- WHERE은 FROM 절의 테이블에 있는 각 ROW를 연산하기 때문에 안됨
GROUP BY Country
;

SELECT Country, COUNT(CustomerID) FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 3 -- HAVING aggregation function결과를 조건으로 줄 수 있음
;

-- 가장 적은 고객이 있는 나라들조회
SELECT Country, COUNT(CustomerID) count FROM Customers
GROUP BY Country
HAVING count = (SELECT COUNT(CustomerID) count FROM Customers
GROUP BY Country ORDER BY count LIMIT 1);



