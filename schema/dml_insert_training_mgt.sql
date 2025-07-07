INSERT INTO courses (c_id, c_name) VALUES
(1, 'Python'),
(2, 'Web Dev');

INSERT INTO topics (t_id, topic, c_id) VALUES
(1, 'Variables', 1),
(2, 'Functions', 1),
(3, 'HTML', 2),
(4, 'CSS', 2);

INSERT INTO trainers (trainer_id, trainer_name) VALUES
(1, 'Mr. Akshay'),
(2, 'Ms. Riya');

INSERT INTO batches (b_code, start_date, end_date, c_id) VALUES
('101', '2024-01-01', '2024-03-01', 1),
('102', '2024-02-01', '2024-04-01', 2);

INSERT INTO trainer_batch (trainer_id, b_code) VALUES
(1, 101),
(2, 102);

INSERT INTO candidates (candidate_id, name, email, phone) VALUES
(1, 'Aditi', 'aditi@gmail.com', '1111111111'),
(2, 'Rahul', 'rahul@gmail.com', '2222222222');

INSERT INTO candidate_batch (candidate_id, b_code, status) VALUES
(1, 101 , 'Completed'),
(2, 101 , 'In Progress'),
(2, 102 , 'In Progress');

INSERT INTO assignments (assignment_id, b_code, title, descrip, due_date) VALUES
(1, 101 , 'Assignment 1', 'Python Basics', '2024-02-10'),
(2, 102 , 'Assignment 2', 'HTML Page', '2024-03-01');

INSERT INTO submissions (candidate_id, assignment_id, submission_date, score) VALUES
(1, 1, '2024-02-09', 98),
(2, 1, '2024-02-10', 85),
(2, 2, '2024-03-01', 80);