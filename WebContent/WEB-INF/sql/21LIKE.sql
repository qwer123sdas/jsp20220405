SELECT * FROM Employees;

-- '_' : 하나의 문자
-- LIKE : 유사한지 ~~ 같은 의미

SELECT * FROM Employees WHERE Photo LIKE 'EmpID_.pic';

-- '%' : 0개 이상의 문자
SELECT * FROM Employees WHERE LastName LIKE 'D%'; -- d로 시작하는
SELECT * FROM Employees WHERE LastName LIKE '%n'; -- n으로 끝나는

SELECT * FROM Employees WHERE LastName LIKE '%n%';

SELECT CustomerID, CustomerName, City FROM Customers ORDER BY CustomerID;