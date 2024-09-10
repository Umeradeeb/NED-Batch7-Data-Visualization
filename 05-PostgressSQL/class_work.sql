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