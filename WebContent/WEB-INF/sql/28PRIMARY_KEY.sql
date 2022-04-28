CREATE TABLE MyTable12(
	col1 VARCHAR(10),
    col2 VARCHAR(10) NOT NULL UNIQUE
);

DESC MyTable12;

-- primary key : not null + unique 조합
CREATE TABLE MyTable13(
	col1 VARCHAR(10),
    col2 VARCHAR(10) PRIMARY KEY
);

INSERT INTO MyTable13(col1, col2) VALUES('a', 'a');
INSERT INTO MyTable13(col1, col2) VALUES('a', 'b');
INSERT INTO MyTable13(col1, col2) VALUES('a', 'b');