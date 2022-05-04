-- 다 대 다 관계 ( n to n)
-- p.373 장난감, 가게 정보
DROP TABLE toy;
CREATE TABLE toy(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255)
);
CREATE TABLE store(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255)
);

-- 상점에서 파는 장난감이라는 관계
-- 하나의 상점에서 여러 장난감을 팔 수 있다. 즉 하나의 장난감은 여러 상점에서 팔 수 있다. 이는 다 대 다 관계
-- 해결방법 : 1대다 관계로 해결해야 함

CREATE TABLE store_toy(
	id INT PRIMARY KEY AUTO_INCREMENT,
	toy_id INT,
    store_id INT,
    FOREIGN KEY (toy_id) REFERENCES toy(id),
    FOREIGN KEY (store_id) REFERENCES store(id)
);


INSERT INTO toy(name) VALUES('자동차');
INSERT INTO toy(name) VALUES('비행기');
INSERT INTO toy(name) VALUES('뽀로로');
INSERT INTO toy(name) VALUES('잠수함');
SELECT * FROM toy;

INSERT INTO store(name) VALUES('강남점');
INSERT INTO store(name) VALUES('삼성점');
INSERT INTO store(name) VALUES('여의도점');
SELECT * FROM store;

INSERT INTO store_toy(toy_id, store_id) VALUES(1, 1);
INSERT INTO store_toy(toy_id, store_id) VALUES(2, 1);
INSERT INTO store_toy(toy_id, store_id) VALUES(3, 1);
INSERT INTO store_toy(toy_id, store_id) VALUES(1, 2);
INSERT INTO store_toy(toy_id, store_id) VALUES(2, 2);
INSERT INTO store_toy(toy_id, store_id) VALUES(3, 2);
INSERT INTO store_toy(toy_id, store_id) VALUES(1, 3);
INSERT INTO store_toy(toy_id, store_id) VALUES(2, 3);
INSERT INTO store_toy(toy_id, store_id) VALUES(4, 3);

SELECT * FROM store_toy;

-- 여의도 점에서 파는 장난감 명 조회
SELECT s.name, t.name
FROM store s JOIN store_toy st ON s.id = st.store_id
			JOIN toy t ON st.toy_id = t.id
WHERE s.name = '여의도점';

DESC w3schools.Orders;

