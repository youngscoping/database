DROP DATABASE IF EXISTS assignment_01;
CREATE DATABASE assignment_01;
USE assignment_01;

-- Tạo bảng department
CREATE TABLE department (
	id INT,
    name VARCHAR(50)
);

-- Tạo bảng position
CREATE TABLE position (
	id INT,
    name VARCHAR(50)
);

-- Tạo bảng account
	CREATE TABLE account (
    id INT,
    email VARCHAR(50),
    user_name VARCHAR(50),
    full_name VARCHAR(50),
    position_id INT,
    create_date DATE
    );
    
-- Tạo bảng group
	CREATE TABLE `group`(
		id INT,
        name VARCHAR(50),
        creator_id iNT,
        create_date DATE
    );
    
-- Tạo group account
     CREATE TABLE group_account (
     group_id INT,
     account_id INT,
     join_date DATE
     );
    
-- Tạo Type Question
		CREATE TABLE type_question(
        type_id INT,
        type_name VARCHAR(50)
        );
     
-- Tạo bảng Category Question
		CREATE TABLE category_question(
        category_id INT,
        category_name VARCHAR(50)
        );
        
-- Tạo bảng question
	CREATE TABLE question(
    id INT,
    content VARCHAR(300),
    category_id INT,
    type_id INT,
    creator_id INT,
    create_date DATE
    );
     
-- Tạo bảng answer
	CREATE TABLE answer(
    id INT,
    `code` VARCHAR(10),
    title INT,
    category_id INT,
    duration INT,
    creator_id INT,
    create_date DATE,
    is_correct BOOL
    );
    
    
    
-- Tạo bảng exam
	CREATE TABLE exam(
    id INT,
    `code` VARCHAR(10),
    title VARCHAR(50),
    category_id INT,
    duration INT,
    creator_id INT,
    create_date DATE
    );
    
    -- Tạo bảng exam question
    CREATE TABLE exam_question (
    exam_id INT,
    question_id INT
    );
     