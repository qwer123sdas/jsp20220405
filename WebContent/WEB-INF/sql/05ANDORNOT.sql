USE w3schools;
SELECT * FROM Customers WHERE Country = 'Brazil';
SELECT * FROM Customers WHERE Country = 'Germany';

SELECT * FROM Customers WHERE Country = 'Brazil' AND City='Rio de Janeiro';
SELECT * FROM Customers WHERE City = 'London' Or Country='Germany';

SELECT * FROM Customers WHERE Not Country = 'Germany';

SELECT * FROM Customers WHERE 1 = 1;
SELECT * FROM Customers WHERE Country = 'Germany' OR 1 = 1;

-- 나라명을 ' OR '1' = '1
SELECT * FROM Customers WHERE Country = '' OR '1' = '1'; -- 결과는 전부 나열
SELECT * FROM Customers WHERE Country = 'Argentina' AND City = 'Anchorage';
SELECT * FROM Customers WHERE Country = 'Germany' AND City = 'Berlin';


