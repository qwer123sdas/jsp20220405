-- 데이터 베이스 만들기A

CREATE DATABASE mydb1;
USE mydb1;

-- 테이블 만들기
CREATE TABLE myTable1(
	colName1 int,
    colName2 int
);

-- 테이블 구조 보기
DESC myTable1;
DESC w3schools.Customers;

-- 새로만든 테이블에 데이터 넣기
INSERT INTO myTable1 (colName1, colName2)
VALUES(300, 500);

SELECT * FROM myTable1;

-- 이미 있는 데이터를 사용해서 새 테이블 만들기ALTER
CREATE TABLE MyTable2 -- AS키워드가 생략됨
SELECT  * FROM w3schools.Employees;
DESC MyTable2;

SELECT * FROM MyTable2;  -- 데이터 까지 복사됨

CREATE TABLE MyTable3 AS
SELECT CustomerID, CustomerName AS Name, City, Country
FROM w3schools.Customers;

DESC MyTable3;

SELECT * FROM MyTable3;
DESC myTable1;
SELECT * FROM myTable1;

INSERT INTO myTable1(colName1, colName2)
VALUES('111', '222');

INSERT INTO myTable1(colName1, colName2)
VALUES('aaa', '333');