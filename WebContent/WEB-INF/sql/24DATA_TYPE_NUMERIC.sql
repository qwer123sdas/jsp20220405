USE mydb1;

CREATE TABLE MyTable6(
	col1 INT,
    col2 INT(3)
);
SELECT * FROM MyTable6;


INSERT INTO MyTable6 (col1)
VALUES (298372223233); -- 최소 최대값 사이만 가능

INSERT INTO MyTable6(col1)
VALUES(3);

INSERT INTO MyTable6(col2)
VALUES(123);

INSERT INTO MyTable6(col2)
VALUES(1234);

INSERT INTO MyTable6(col1)
VALUES (3.14);

-- DEC : 소수가 있는 수
-- DEC(size, d) : size=총길이, d=소수점이하 수의 길이

CREATE TABLE MyTable7(
	col1 DEC(3, 2),
    col2 DEC(5, 1)
);
SELECT * FROM MyTable7;

INSERT INTO MyTable7(col1) VALUES(3.14);
INSERT INTO MyTable7(col1) VALUES(13.14);
INSERT INTO MyTable7(col1) VALUES(3.145);

INSERT INTO MyTable7(col2) VALUES(1234.5);
INSERT INTO MyTable7(col2) VALUES(1234.522);