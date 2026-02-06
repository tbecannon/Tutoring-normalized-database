--Joshua Wong, Raul Cano, Thomas Becannon
--12/11/2024
--CS 325 - Fall 2024
spool 325query-results.txt
-- Get students enrolled in group session
SELECT COUNT(DISTINCT stu_id) group_students_count
FROM TutorConnect_Group g, TutorConnect_session t, Group_Stu
WHERE g.sess_id = t.sess_id
and g.sess_id = Group_Stu.sess_id
AND t.sess_type = 'Group';

-- Get tutors teaching in group
SELECT DISTINCT t.tutor_id, t.tutor_fname, t.tutor_lname, t.tutor_email
FROM Tutor t
JOIN TutorConnect_Group g ON t.tutor_id = g.tutor_id
JOIN TutorConnect_Session s ON g.sess_id = s.sess_id
WHERE s.sess_type = 'Group';

-- Get id of all users, fac, and students
SELECT DISTINCT stu_id, stu_fname || ' ' || stu_lname "Name"
FROM student;

-- See who is actually a student
SELECT DISTINCT s.stu_id, s.stu_fname || ' ' || s.stu_lname "Name"
FROM student s
JOIN Courses c ON s.stu_id = c.stu_id
JOIN Progress_Dashboard p ON s.stu_id = p.stu_id;

-- Get number of students in each course
select course_id, count(course_id) "Students in the course"
from courses
group by course_id;

-- Get test name and amount of problems on the test
select test_title, num_problems
from Test;

-- Get dates of different individual sessions
select sess_id, sess_date
from TutorConnect_Session
where sess_type = 'Individual';


-- Get average amount for students that do owe a payment
select avg(payment_id)
from payment
where payment_id is NOT NULL;


-- Get join between student, tutor, and individual session displaying key information
select s.stu_id, stu_lname, t.tutor_id, tutor_lname, sess_date
from student s, tutor t, individual i, tutorconnect_session c
where s.stu_id = i.stu_id and t.tutor_id = i.tutor_id and i.sess_id = c.sess_id;


-- Get join between tutor and feedback (feedback_stars) (group by)
select t.tutor_id, avg(feedback_stars)
from tutor t, feedback f
where t.tutor_id = f.tutor_id
group by t.tutor_id;

-- Get count of how many worksheets, tests, and text in database
(SELECT COUNT(*) AS Total
FROM Worksheets)
UNION ALL
(SELECT COUNT(*) AS Total
FROM Test)
UNION ALL
(SELECT COUNT(*) AS Total
FROM Text);

-- Get max star rating for a tutor with no 1 star ratings
SELECT tutor_id, feedback_stars "max rating"
FROM Feedback
WHERE not exists (SELECT MAX(feedback_stars)
    FROM Feedback f
    where Feedback.tutor_id = f.tutor_id and feedback_stars > 2
);

-- Get schedule for a student with a certain id
select s.stu_id, stu_lname, course_id, course_time
from student s
join schedule c on s.stu_id = c.stu_id
where s.stu_id = '216432';


-- Get worksheets in order of difficulty number
select ws_id, difficulty
from worksheets
order by difficulty desc;

-- Get a list showing faculty id, name, email, subject, and office
SELECT f.fac_id, f.fac_fname || ' ' || f.fac_lname "Name", f.fac_email, f.fac_email, f.fac_office
FROM Faculty f;

-- Get students who are "floaters" ex not in any groups
SELECT stu_id, stu_fname || ' ' || stu_lname "Student"
FROM student
WHERE NOT exists (SELECT stu_id
			      FROM TutorConnect_Group);

-- Get students in multiple groups
SELECT stu_id
FROM Student
WHERE stu_id IN (
    SELECT stu_id
    FROM TutorConnect_Group
    GROUP BY stu_id
    HAVING COUNT(sess_id) > 1
);


-- Get cost of tutors (homogenous cost)
SELECT DISTINCT Count(1) * 17.75 "Tutor Cost"
FROM Tutor;


-- Get text titles and faculty that provided each one
select t.text_title, f.fac_id, f.fac_lname
from text t, learning_resources l, faculty_contrib c, faculty f
where t.lr_id = l.lr_id and l.lr_id = c.lr_id and c.fac_id = f.fac_id;


-- Get count of each type of Learning Resources
select lr_type, count(1)
from learning_resources
group by lr_type;

-- Get people using Learning Resources
select Learning_resources.lr_id, stu_fname || ' ' || stu_lname
From Using
join Student on Student.stu_id = Using.stu_id
join Learning_resources on Learning_resources.lr_id = Using.lr_id
order by Learning_resources.lr_id;


-- join between tutor and tutor_subj (their expertise)
select t.tutor_id, t.tutor_lname, s.tutor_subject
from tutor t, tutor_subj s
where t.tutor_id = s.tutor_id;


-- Get faculty by subject
SELECT fac_subject, fac_fname || ' ' || fac_lname "Name"
FROM Faculty
ORDER BY fac_subject;


-- Get Students By groups
SELECT g.sess_id AS group_id, s.stu_id, s.stu_fname || ' ' || s.stu_lname "Name"
FROM Group_Stu g JOIN student s
	ON g.stu_id = s.stu_id
ORDER BY g.sess_id;
spool off
