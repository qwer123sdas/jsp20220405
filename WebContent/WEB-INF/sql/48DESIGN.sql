-- 1대 1 관계

CREATE TABLE Employees(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    address VARCHAR(255),  -- 총무과
    salary INT   -- 인사과
);


-- 1대 1 관계
CREATE TABLE Employees_chong(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    address VARCHAR(255)
);

CREATE TABLE Employees_insa(
	id INT PRIMARY KEY AUTO_INCREMENT,
    address VARCHAR(255)
);


