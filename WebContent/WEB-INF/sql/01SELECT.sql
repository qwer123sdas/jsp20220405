-- --는 한 줄 주석이다
-- SELECT : 테이블에 있는 데이터를 가져오는 명령문
-- 대소문자 구분은 안한다 대신 관습이 있다
-- FROM : 어떤 테이블인지 지정 + 테이블 조회
-- ; : 명령문 종료 꼭 마지막에 작성해주기
SELECT *FROM Customers;

-- data는 table의 한 줄( = row, record, entry)이다.

-- 8개의 테이블을 조회
SELECT *FROM Shippers;
SELECT * FROM Products;

-- table의 특정 속성(attribute, column, 열, filed)만 조회 하고 싶을 떄는
-- SELECT키워드 다음에 column명 나열하기 + FROM 부분 쓰기
-- * : 모든 column
-- 작성된 순러로 조회결과 나옴
SELECT * FROM Customers;
SELECT CustomerName, Address FROM Customers;

-- Employees 테이블에서 FirstName과 BirthDate만 조회
SELECT FirstName, BirthDate FROM Employees;

-- Employees 테이블에서 FirstName과 LastName을 조회하는데, FirstName이 왼쪽에 위치하도록 작성
SELECT LastName, FirstName FROM Employees;
SELECT FirstName, LastName FROM Employees;

-- 대소문자 구분 안함(데이터 베이스를 만든  Vendor마다 버전마다 다름 )
select FIRSTNAME, LASTNAME from Employees;
-- 작성관습이 있음 : 키워드는 대문자, 
-- colunm명은 lowerCamelCase / snake _Case, SNAKE_CASE...





