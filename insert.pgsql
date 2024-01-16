INSERT INTO Teachers (teacher_id, teacher_firstname, teacher_lastname, teacher_email)
VALUES
    (1, 'Zhaksybek', 'Amiradin', 'zhaks.amir@mail.ru'),
    (2, 'Tugenshe', 'Palensheev', 'pal.tug@mail.ru');

INSERT INTO Groups (group_id, group_name, teacher_id)
VALUES
    (16, 'Python', 1),
    (17, 'Java', 2);

INSERT INTO Students (student_id, student_firstname, student_lastname, student_email, phone_number, group_id)
VALUES
    (1, 'Abilkaiyr', 'Togamyssov', 'togamyssovabyl@mail.ru', '8-778-166-15-39', 16),
    (2, 'Ivan', 'Ivanov', 'ivan@mail.ru', '8-701-123-45-67', 17);

INSERT INTO Student_Group (student_id, group_id)
VALUES
    (1, 16),
    (2, 17);
