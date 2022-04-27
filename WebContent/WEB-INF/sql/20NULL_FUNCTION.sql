INSERT INTO Customers(CustomerName, City) VALUES('SON', 'SEOUL');
SELECT * FROM Customers;

-- NULL : 값이 없음을 의미
SELECT * FROM Customers WHERE CustomerName = 'SON';
-- null이아닌 다른 값이 들어갔으면 좋겟다
-- IFNULL : NULL을 다른 값으로 변경해 주는 함수
SELECT CustomerName, IFNULL(ContactName, 'NONAME') contactName FROM Customers WHERE CustomerName = 'SON';

SELECT 1 + 1;
SELECT 1 + NULL;

-- Products2 테이블 만들기
CREATE TABLE Products2(
	P_Id INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(20),
    UnitPrice DEC(4, 2),
    UnitsInStock INT,
    UnitsOnOrder INT
);

INSERT INTO Products2 (ProductName,UnitPrice,UnitsInStock,UnitsOnOrder)
VALUES('JarlsBerg', 10.45, 16, 15),
('Mascarpone', 32.56, 23, null),
('Gorgonzola', 15.67, 9, 20);

SELECT * FROM Products2;

SELECT ProductName, UnitPrice * (UnitsInStock + UnitsOnOrder)
FROM Products2;

SELECT ProductName, UnitPrice * (UnitsInStock + IFNULL(UnitsOnOrder, 0))
FROM Products2;

SELECT ProductName, UnitPrice * (UnitsInStock + coalesce(UnitsOnOrder, 0))
FROM Products2;
 
SELECT IFNULL('널아님', '대체값');
 SELECT IFNULL(null, '대체값');
 SELECT COALESCE('대체값1');
  SELECT COALESCE(null, null, null, '대체값1');
  
DESC Employees;
 