CREATE TABLE Bank(
	account VARCHAR(2) PRIMARY KEY,
    money INT 
);

INSERT INTO Bank (account, money)
VALUES ('A', 10000);
INSERT INTO Bank (account, money)
VALUES ('B', 30000);
COMMIT;
SELECT * FROM Bank;

-- A가 B에게 5000원 송금
-- A의 계좌에서 -5000
-- B의 계좌에 +5000
-- 이게 하나의 TRANSACTION이 됨

UPDATE Bank SET money = money - 5000 WHERE account = 'A';
-- 돈을 보냈는데 문제가 발생하면
-- COMMIT을 하는게 아니라 ROLLBACK을 해야 한다.
ROLLBACK;
UPDATE Bank SET money = money + 5000 WHERE account = 'B';

COMMIT;

SELECT * FROM Bank;
