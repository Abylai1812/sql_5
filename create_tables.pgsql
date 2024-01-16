-- Один к одному
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_firstname VARCHAR(255) NOT NULL,
    student_lastname VARCHAR(255) NOT NULL,
    student_email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    group_id INT UNIQUE REFERENCES Groups(group_id)
);

CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,
    teacher_firstname VARCHAR(255) NOT NULL,
    teacher_lastname VARCHAR(255) NOT NULL,
    teacher_email VARCHAR(255) NOT NULL
);
-- Один ко многому
CREATE TABLE Groups (
    group_id INT PRIMARY KEY,
    group_name VARCHAR(255) NOT NULL,
    teacher_id INT REFERENCES Teachers(teacher_id)
);
-- Много ко многому
CREATE TABLE Student_Group (
    student_id INT REFERENCES Students(student_id),
    group_id INT REFERENCES Groups(group_id)
);

