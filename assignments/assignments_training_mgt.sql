SELECT c.name, cb.batch_code, cb.status
FROM candidates as c
JOIN candidates_batch as cb ON cb.candidate_id = c.candidate_id
ORDER BY c.name;

SELECT b.b_code, t.trainer_name
FROM trainer_batch as tb
JOIN trainers as t ON tb.trainer_id = t.trainer_id
JOIN batches as b ON tb.batch_code = b.b_code
ORDER BY b.b_code, t.trainer_name;

SELECT c.c_name, t.topic
FROM courses as c
JOIN topics as t ON c.c_id = t.c_id
ORDER BY c.c_name, t.topic;

SELECT c.name, b.b_code, a.title, s.score
FROM submissions as s
JOIN candidates as c ON c.candidate_id = s.candidate_id
JOIN assignments as a ON a.assignment_id = s.assignment_id
JOIN batches b ON b.b_code = a.batch_code
ORDER BY c.name, b.b_code, a.title;

SELECT b.b_code, c.name
FROM candidate_batch cb
JOIN batches b ON b.b_code = cb.b_code
JOIN candidates c ON c.candidate_id = cb.candidate_id
WHERE cb.status = 'Completed'
ORDER BY b.b_code, c.name;
