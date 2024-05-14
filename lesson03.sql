-- mệnh đề select
SELECT current_date AS  "Today" , NOW() AS "Now" ;
SELECT current_date  "Today" , NOW()  "Now" ;

-- mệnh đề from
SELECT department_id, department_name
FROM department;


-- *: Tất cả
SELECT *
 FROM question;
 
-- mẹnh đề where
-- Toán tử: > , >=, <, <=, =, != (<>)

SELECT *
FROM department
WHERE department_id != 5 ;

-- AND, OR
SELECT *
FROM department
WHERE department_id <3 OR department_id > 8;

-- BETWEEN .. AND ..
SELECT *
FROM department
WHERE department_id BETWEEN 3 AND 8;

-- IN 
SELECT *
FROM department
WHERE department_id IN ( 2,4,6,8);


-- LIKE 
-- _: Đại diện cho 1 kí tự
-- %: Đại diện cho 0 hoặc nhiều kí tự

SELECT *
FROM department
WHERE department_name LIKE "%g%";

-- IS NULL / IS NOT NULL
SELECT *
FROM department
WHERE department_name IS NOT NULL;


-- mệnh đề LIMIT
SELECT *
FROM department
LIMIT 5;

SELECT *
FROM department
LIMIT 6,3; -- Start, number

-- Mệnh đề ORDER BY
-- ASC, DESC
-- mặc định ASC

SELECT * 
FROM exam
ORDER BY duration DESC, created_date DESC ;

-- Hàm tổng hợp
-- COUNT(*) : đếm số dòng
		SELECT COUNT(*) AS exam_count
        FROM exam;
-- COUNT(id) : đếm số dòng mà id is not null
		INSERT INTO exam (exam_id, code, title, category_id, duration, creator_id)
		VALUES 			 ('11', 'VTIQ011', 'Đề thi MySQL', '2', null, '9');

		SELECT COUNT(duration) AS exam_count
        FROM exam;

-- SUM, MIN, MAX, AVG
		SELECT SUM(duration), MIN(duration), MAX(duration), AVG(duration)
        FROM exam;

-- mệnh đề Group By
	SELECT duration, COUNT(exam_id) AS exam_count
    FROM exam
    GROUP BY duration;

	SELECT duration,created_date, COUNT(exam_id) AS exam_count
    FROM exam
    GROUP BY duration, created_date
    ORDER BY duration, created_date;

-- mệnh đề having
	SELECT duration,created_date, COUNT(exam_id) AS exam_count
    FROM exam
    GROUP BY duration, created_date
    HAVING COUNT(exam_id) >1
    ORDER BY duration, created_date;


-- 







