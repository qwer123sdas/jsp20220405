CREATE TABLE MyTable17(
	col1 VARCHAR(10),
    col2 VARCHAR(10) DEFAULT 'hello'
);

DESC MyTable17;

INSERT INTO MyTable17 (col1, col2) VALUES('abc', 'def');
INSERT INTO MyTable17 (col1, col2) VALUES('abc', null);
INSERT INTO MyTable17 (col1) VALUES('hi');
SELECT * FROM MyTable17;