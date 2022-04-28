USE mydb1;

-- CHECK : 입력되는 값을 검사한다. 맞으면 입력해주고 틀리면 입력 안해준다.
CREATE TABLE MyTable15(
	col1 INT,
    col2 INT CHECK(col2 > 0)
);

DESC MyTable15;
INSERT INTO MyTable15(col1, col2) VALUES(3, 3);
INSERT INTO MyTable15(col1, col2) VALUES(-3, 3);
INSERT INTO MyTable15(col1, col2) VALUES(3, -3);

SHOW CREATE TABLE MyTable15;

-- backtick ``
CREATE TABLE MyTable14(
	`unique` VARCHAR(10)   -- unique가 키워드라서 저장안되지만 ``를 통해서 키워드로 저장가능
);