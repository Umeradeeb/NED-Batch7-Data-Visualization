-- Creating the teachers table
CREATE TABLE teachers (
    teacher_id SERIAL PRIMARY KEY,
    teacher_name VARCHAR(100),
    subject VARCHAR(50)
);

-- Creating the students table
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100),
    teacher_id INT,
    CONSTRAINT fk_teacher
      FOREIGN KEY(teacher_id) 
      REFERENCES teachers(teacher_id)
);

-- Creating the fees table
CREATE TABLE fees (
    fee_id SERIAL PRIMARY KEY,
    student_id INT,
    fee_amount NUMERIC(10, 2),
    fee_paid_date DATE,
    CONSTRAINT fk_student
      FOREIGN KEY(student_id) 
      REFERENCES students(student_id)
);


-- Inserting data into teachers table
INSERT INTO teachers (teacher_name, subject)
VALUES
('Ahmad Raza', 'Mathematics'),
('Fatima Saeed', 'Physics'),
('Usman Ali', 'Computer Science');

-- Inserting data into students table
INSERT INTO students (student_name, teacher_id)
VALUES
('Mohammad Iqbal', 1),
('Ali Raza', 1),
('Hina Nawaz', 2),
('Sania Qamar', 2),
('Hassan Shahid', 3),
('Ayesha Noor', 3),
('Zain Ahmed', 1),
('Sara Khan', 2),
('Noman Aslam', 3),
('Rabia Malik', 2);

-- Inserting data into fees table
INSERT INTO fees (student_id, fee_amount, fee_paid_date)
VALUES
(1, 2000.00, '2024-08-01'),
(2, 1800.00, '2024-07-15'),
(3, 2500.00, '2024-08-10'),
(4, 2200.00, '2024-07-20'),
(5, 2300.00, '2024-08-05'),
(6, 2100.00, '2024-07-30'),
(7, 2400.00, '2024-08-07'),
(8, 2600.00, '2024-08-12'),
(9, 1900.00, '2024-07-18'),
(10, 2000.00, '2024-08-02');




SELECT
	students.student_id,
	students.student_name,
	fees.fee_amount,
	fees.fee_paid_date,
	teachers.teacher_name
	
	
FROM 
	students,
	teachers,
	fees
WHERE
	students.teacher_id = teachers.teacher_id AND 
	students.student_id = fees.student_id;


SELECT
	s.student_id,
    s.student_name,
    f.fee_amount,
    f.fee_paid_date,
    t.teacher_name
	
FROM 
	students s inner join teachers t on s.teacher_id = t.teacher_id,
    students st inner join fees f on st.student_id = f.student_id;


select count(distinct student_name) from students

SELECT * FROM students;

INSERT INTO students (student_id, student_name, teacher_id)
VALUES (11, 'Umer Adeeb', 1)

INSERT INTO students
VALUES (12, 'Amna Younus', 2)

INSERT INTO students(student_id, student_name, teacher_id)
VALUES 
(13, 'Ammarah Affan', 1),
(14, 'Abeeha', 3),
(15, 'Muhammad Usman', 2)

INSERT INTO students
VALUES (16,NULL, 2)

SELECT * FROM students
WHERE student_name IS NULL

UPDATE students
SET
student_name = 'Iqra'
WHERE student_id = 16

DELETE FROM students
WHERE student_id = 16

-- Creating the teachers table
CREATE TABLE staff (
    staff_id SERIAL PRIMARY KEY,
    staff_name VARCHAR(100),
    salary VARCHAR(50)
);

INSERT INTO STAFF
VALUES (1, 'Ali', 200000), (2, 'Hamza', 300000)

SELECT * FROM staff

DELETE FROM staff

DROP TABLE staff


SELECT * FROM students
WHERE teacher_id =1
LIMIT 5


SELECT * FROM fees
SELECT MAX(fee_amount) FROM fees
SELECT MIN(fee_amount) FROM fees

SELECT MAX(fee_paid_date) FROM fees
SELECT MIN(fee_paid_date) FROM fees

SELECT AVG(fee_amount) FROM fees
SELECT SUM(fee_amount) FROM fees

SELECT * FROM students
SELECT MIN(student_id), teacher_id from students
Group by teacher_id

SELECT * FROM students
SELECT COUNT(student_id), teacher_id from students
Group by teacher_id

Select * from students
select count(distinct teacher_id) as "uni teachers" from students

SELECT  teacher_id, SUM(fee_amount) 
FROM students
LEFT JOIN fees ON students.student_id = fees.student_id
group by teacher_id;



SELECT  teacher_id, AVG(fee_amount) 
FROM students
LEFT JOIN fees ON students.student_id = fees.student_id
group by teacher_id;

Select * from students

select 
	student_id as "Roll No",
	student_name as "Name"
from students


--- Joining

select * from students
select * from teachers
select * from fees

select * from students s
inner join teachers t on s.teacher_id = t.teacher_id

select * from students s
inner join fees f on s.student_id = f.student_id

select * from students s
inner join fees f on s.student_id = f.student_id
inner join teachers t on s.teacher_id = t.teacher_id