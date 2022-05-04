
-- 제2 정규화(second normal form, 2NF)(책 368쪽)
-- ㉠ 제1정규형이어야 하고
-- ㉡ 부분적 함수 의존이 없다. ( p.363) 


-- 제 3정규형 (third normal form, 3nf) (책 374쪽)
-- ㉠ 제 2 정규형을 만족해야 하고
-- ㉡ 이행적 종속이 없어야 한다. (p.364) = 키가아닌 열이, 키가 아닌 다른 열에 종속되는 경우가 없어야 한다.

CREATE TABLE courses(
	course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    instructor VARCHAR(255),
    instructor_phone VARCHAR(255)
);
-- 위는, 강의하는사람 전화번호가 강의하는 사람에 종속되어 있으므로 제 3유형에 어긋난다. 따라서 이를 분리해서 만들어야 한다.
DROP TABLE course;

CREATE TABLE course(
	course_id INT PRIMARY KEY AUTO_INCREMENT,
	course_name VARCHAR(255),
    instructor_id INT,
    -- 만약 1개의 강의에 1명의 강의자가 있어야 한다면,?? 아니면 1대 다 관계???
    FOREIGN KEY (instructor_id) REFERENCES instructor(instructor_id)
);

CREATE TABLE instructor(
	instructor_id INT PRIMARY KEY AUTO_INCREMENT,
	instructor_name VARCHAR(255),
    instructor_phone VARCHAR(255)
);




CREATE TABLE table1 (
	id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20)
);

CREATE TABLE table2 (
	id INT PRIMARY KEY,
    address VARCHAR(20),
    FOREIGN KEY (id) REFERENCES table1(id)
);

alter TABLE table1 ADD CONSTRAINT FOREIGN KEY (id) REFERENCES table2(id);




CREATE TABLE `table11` (
  `a` INT NOT NULL,
  `table2_idtable2` INT NOT NULL,
  INDEX `fk_table1_table2_idx` (`table2_idtable2` ASC) VISIBLE,
  CONSTRAINT `fk_table1_table2`
    FOREIGN KEY (`table2_idtable2`)
    REFERENCES `table12` (`idtable2`))
;

CREATE TABLE`table12` (
  `idtable2` INT NOT NULL,
  PRIMARY KEY (`idtable2`))
  ;
  
  