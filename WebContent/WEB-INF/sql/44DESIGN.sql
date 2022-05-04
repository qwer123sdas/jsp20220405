CREATE DATABASE mydb3;
USE mydb3;

-- 중복되는 값이 없도록, NULL이 남지 않도록 주의해서 만들기
-- 정규화(Normal Form) : 다듬는다? 
-- 제1정규화(First Normal Form) = 1NF
-- 제2정규화(Second Normal Form) = 2NF
-- 제3정규화(Third Normal Form) = 3NF
-- 이 3가지 정규화를 차례대로 만족해야 함

-- 제 1정규화(p.358)
-- ㉠열은 원자적 값(atomic data)만을 포함한다. (원자적인 값 = 행에 맞는 ?) 이름과 주소를 저장하고 싶었다.
CREATE TABLE Person1(
	name VARCHAR(200) PRIMARY KEY, 
    address VARCHAR(200)
);
SET autocommit = 1;
INSERT INTO Person1(name, address)
VALUES ('A', '서울시 강남구 역삼동 111');
-- 배달자 입장에서는 address는 원자적임. 하지만 통계청에서는 address는 원자적이지 않을 수 있다. 왜냐하면 더 세부적으로 컬럼이 필요

-- ㉡같은 데이터가 여러 열에 반복되지 말아야 한다.
-- 컬러라는 행이 color1, color2 color3컬럼으로 있으면 안된다. 만약 이렇게 있다면 컬러는 다른 테이블로 빼야 한다.이떄 foreign key설정을 해줘서 서로 참조하도록 하기

CREATE TABLE toy(
	toy_id INT PRIMARY KEY,
    toy VARCHAR(255)
);
CREATE TABLE toy_color(
	toy_id INT,
    color VARCHAR(255),
    FOREIGN KEY(toy_id) REFERENCES toy(toy_id),
    -- 합성키 = 복합키
    PRIMARY KEY(toy_id, color) 
);

INSERT INTO toy (toy_id, toy) VALUES (1, 'c');
insert into toy_color (toy_id, color) values (1, 'red');

DROP TABLE toy_color;
CREATE TABLE toy_color(
	toy_color_id INT PRIMARY KEY AUTO_INCREMENT,
	toy_id INT,
    color VARCHAR(255),
    FOREIGN KEY (toy_id) REFERENCES toy(toy_id)
);

