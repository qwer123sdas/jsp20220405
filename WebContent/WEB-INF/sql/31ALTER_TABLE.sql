-- CREATE TABLE : 테이블 만들기
CREATE TABLE CustomersTable AS
SELECT * FROM w3schools.Customers;

DESC CustomersTable; 
-- DROP TABLE : 테이블 삭제

-- ALTER TABLE : 테이블 수정
-- 컬럼 추가
ALTER TABLE CustomersTable
ADD Email VARCHAR(255);

ALTER TABLE CustomersTable
ADD Email VARCHAR(255) NOT NULL DEFAULT '이메일 없음';

-- 컬럼 삭제
ALTER TABLE CustomersTable
DROP COLUMN Email;

-- 컬럼위치 바꾸끼 (맨 앞)
ALTER TABLE CustomersTable
ADD Email VARCHAR(255) FIRST;
-- 컬럼위치 바꾸끼 (중간)
ALTER TABLE CustomersTable
ADD Email VARCHAR(255) AFTER ContactName; 
-- 컬럼위치 바꾸끼 (맨끝)
ALTER TABLE CustomersTable
ADD Email VARCHAR(255);

-- 컬럼 수정
ALTER TABLE CustomersTable
MODIFY COLUMN Email VARCHAR(10);