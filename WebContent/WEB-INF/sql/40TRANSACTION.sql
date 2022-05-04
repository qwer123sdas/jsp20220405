-- ﻿mySQL.TRANSACTION
-- 하나의 업무

USE mydb1;

-- 은행의 송금업무
-- 1. A고객의 계좌의 출금이 일어나면
-- 2. b고객의 계좌의 입금이 동시에 일어남
-- 이 1과 2의 과정이 하나의 TRANSACTION
-- 그래서 출금이 실패하고 입금만 성공하면 안되므로 1과 2가 둘다 실패하거나 성공해야함.

-- COMMIT 과 ROLLBACK
-- COMMIT : db에 반영하라는 명령
-- ROLLBACK : 이전으로 되돌리라는 명령

DESC CustomersTable;
ALTER TABLE CustomersTable MODIFY CustomerID INT PRIMARY KEY AUTO_INCREMENT;

SELECT * FROM CustomersTable WHERE CustomerID = 3;
UPDATE CustomersTable SET CustomerName = 'SON'
WHERE CustomerID = 3;

ROLLBACK;
-- disable auto commit
SET autocommit = 0;

UPDATE CustomersTable
SET CustomerName = 'CHA'
WHERE CustomerID = 3;

SELECT * FROM CustomersTable WHERE CustomerID = 3;

ROLLBACK;

-- COMMIT
UPDATE CustomersTable
SET CustomerName = 'PARK'
WHERE CustomerID = 3;

SELECT * FROM CustomersTable WHERE CustomerID = 3;

COMMIT;
ROLLBACK;