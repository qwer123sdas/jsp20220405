CREATE DATABASE mydb2;
USE mydb2;

-- 게시물 작성 테이블
CREATE TABLE Board(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(100) NOT NULL,
    body VARCHAR(10000) NOT NULL,
    inserted DATETIME NOT NULL DEFAULT NOW()
);

SELECT * FROM Board;

SET SQL_SAFE_UPDATES = 0;
UPDATE Board 
SET inserted = DATE_SUB(inserted, INTERVAL 1 DAY);


-- 테이블 관계
-- 1대 1
-- 학생(이름, 생년월일...), 학력(출신학교, 졸업년도) ,,, 1명의 학생과 1명의 학력간의 관계

-- 1대 n(다수)
-- 게시물(게시물번호, 내용), 댓글(댓글내용) ,,,,,,,하나의 게시물이 댓글의 여러 곳에 나타남

-- 다대다 (n대 n)
-- 학생(이름, 생년월일....), 회사(회사명, ...) ,,,, 여러 학생은 취업하기 원하는 회사가 같은 회사로 겹칠 수 도 있고 = 같은 회사를 여러 학생이 희망


DROP TABLE reply;
-- 댓글 작성 테이블(게시물 테이블 참조)
CREATE TABLE Reply(
	id INT PRIMARY KEY AUTO_INCREMENT,
	board_id INT,                             -- foreign key(참조키, 외래키)
	content VARCHAR(255) NOT NULL,
    inserted DATETIME DEFAULT NOW(),
    FOREIGN KEY(board_id) REFERENCES Board(id)   -- FOREIGN KEY 제약사항 추가
);


SELECT * FROM Reply;
