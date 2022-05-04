
DESC w3schools.Products;
DESC w3schools.Categories;

USE mydb3;
CREATE TABLE Products(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    -- categoryName VARCHAR(255),   -- ㅓ로다른 상품이 같은 카테고리일 수 있다 = 중복?
    -- categoryDescription VARCHAR(255)  -- 이는 제 3유형 위반
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(id)
);
CREATE TABLE Categories(    -- 1대 다 관계
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255),  -- 중복되는 이름이 없으면 이를 키로 작업 가능
    description VARCHAR(255)
);