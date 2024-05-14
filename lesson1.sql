-- Xoá CSDL ( nếu tồn tại )
DROP DATABASE IF EXISTS lesson_01;

-- Tạo cơ sở dữ liệu
CREATE DATABASE lesson_01;

-- Hiển thị danh sách CSDL
SHOW DATABASES;

-- Chọn CSDL muốn thao tác 
USE lesson_01;
-- CMD + Enter

-- Kiểu dữ liệu
-- Số nguyên: TINYINT, SMALLINT, MEDIUMINT, INT, BIGINT
-- Số thực: float, double
-- Chuỗi : VARCHAR(50), CHAR(50)
-- Thời gian: DATE (yyyy-MM-dd), TIME, DATETIME
-- Logic : BOOLEAN, BIT
-- ENUM: ENUM("Success", "Error", "Loading")


-- Xoá bảng nếu tồn tại
DROP TABLE IF EXISTS department;

-- Tạo bảng
CREATE TABLE department (
	id INT,
    name VARCHAR(50),
    created_date DATE
);

-- Thêm dữ liệu
INSERT INTO department (id, name, created_date)
VALUES (1, "Bảo vệ", "2020-04-19"),
	   (2, "Kinh doanh", "2023-12-11"),
       (3, "Giám đốc", "2024-01-19");

-- Hiện thị dữ liệU 
TABLE department;
-- hoặc
SELECT * FROM department;


-- Ràng buộc dữ liệu
-- Khoá chính (PRIMARY KEY)
-- 1. 1 bảng tối đa 1 khoá chính
-- 2. giá trị là duy nhất 
-- 3. phải not null
-- tự động tăng: AUTO_INCREMENT

CREATE TABLE product(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);

INSERT INTO product (id, name)
VALUES (1, "Chuột máy tính");
		
INSERT INTO product (id, name)
VALUES (2, "Bàn phím máy tính");

INSERT INTO product ( name)
VALUES ( "Tủ lạnh");

-- NOT NULL: Không đc để trống
DROP TABLE question;
CREATE TABLE question (
	id INT PRIMARY KEY AUTO_INCREMENT,
    content VARCHAR(100) NOT NULL
);

INSERT INTO question (content)
VALUES (NULL);

INSERT INTO question (content)
VALUES ("");


-- UNIQUE KEY: khoá duy nhất 

-- DEFAULT : mặc định

-- CHECK : kiểm tra 

	
	CREATE TABLE `user` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    age INT CHECK (age >= 18)
    );
    
    INSERT INTO `user` (age) VALUES (16);
    
    
    -- FOREIGN KEY: Khoá ngoại
    DROP TABLE IF EXISTS `department`;
    CREATE TABLE `department` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50)
    );
    
    
    DROP TABLE IF EXISTS `account`;
    CREATE TABLE `account` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
    ON UPDATE CASCADE 
    ON DELETE CASCADE
    );
    
    INSERT INTO department (id, `name`) VALUES ( 100, "Bảo vệ");
    
    INSERT INTO `account` (full_name, department_id)
    VALUES ("Nguyễn Văn a" ,100);

-- 