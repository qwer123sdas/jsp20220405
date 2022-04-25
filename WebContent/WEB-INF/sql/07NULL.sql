USE w3schools;

SELECT * FROM Employees ORDER BY EmployeeID DESC;

SELECT * FROM Employees WHERE Photo = 'pic1';

-- 조회시, NULL값인 애들을 찾고 싶다 : IS NULL 
SELECT * FROM Employees WHERE Photo IS NULL;
SELECT * FROM Employees WHERE Photo IS NOT NULL;
SELECT * FROM Employees WHERE NOT Photo IS NULL;

-- 그룹함수에서 보통 NULL은 제외됨
SELECT COUNT(*) FROM Employees; -- COUNT는 레코드 수를 리턴하는 그룹함수
SELECT COUNT(LastName) FROM Employees;
SELECT COUNT(Photo) FROM Employees; -- NULL값을 제외하고 셈.
