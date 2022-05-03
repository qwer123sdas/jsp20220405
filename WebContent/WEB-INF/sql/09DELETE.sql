USE w3schools;

SELECT * FROM Employees;
DELETE FROM Employees; -- 모든 레코드 삭제(위험한 코드)

SET SQL_SAFE_UPDATES = 0;

select * FROM Customers;
delete FROM Customers WHERE Country = 'Mexico';
select * FROM Customers WHERE Country = 'Mexico';

DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';
SELECT * FROM Customers WHERE CustomerName='Alfreds Futterkiste';

-- PRI 는 각 레코드가 가지는 컬럼을 구분해주는 것, Null도 안됨.

