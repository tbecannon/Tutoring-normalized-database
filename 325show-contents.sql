-- Raul Cano, Joshua Wong, Thomas Becannon
-- CS 325 - Fall 2024
-- 12/02/2024

SPOOL 325result-contents.txt

SET LINESIZE 100;
SET PAGESIZE 14;
SET SPACE 1;
SET FEEDBACK 6;
SET NEWPAGE 1;
SET HEADING ON;
TTITLE OFF;
BTITLE OFF;
CLEAR COL;

PROMPT Table Name: Student
PROMPT

SELECT *
FROM Student;

PROMPT Table Name: TutorConnect_Session
PROMPT

SELECT *
FROM TutorConnect_Session;

PROMPT Table Name: TutorConnect_Group
PROMPT

SELECT *
FROM TutorConnect_group;

PROMPT Table Name: Group_Stu
PROMPT

SELECT *
FROM Group_Stu;

PROMPT Table Name: Individual
PROMPT

SELECT *
FROM Individual;

PROMPT Table Name: Tutor
PROMPT

SELECT *
FROM Tutor;

PROMPT Table Name: Tutor_subj
PROMPT

SELECT *
FROM Table;

PROMPT Table Name: Feedback
PROMPT

SELECT *
FROM Feedback;

PROMPT Table Name: Learning_resources
PROMPT

SELECT*
FROM Learning_resources;

PROMPT Table Name: Faculty_contrib
PROMPT

SELECT *
FROM Faculty_contrib;

PROMPT Table Name: Worksheets
PROMPT

SELECT *
FROM Worksheets;

PROMPT Table Name: Test
PROMPT

SELECT *
FROM Test;

PROMPT Table Name: Text
PROMPT

SELECT *
FROM Text;

PROMPT Table Name: Faculty
PROMPT

SELECT *
FROM Faculty;

PROMPT Table Name: Progress_Dashboard
PROMPT

SELECT *
FROM Progress_Dashboard;

PROMPT Table Name: Payment
PROMPT

SELECT *
FROM Payment;

PROMPT Table Name: Schedule
PROMPT

SELECT *
FROM Schedule;

PROMPT Table Name: Courses
PROMPT 

SELECT * 
FROM Courses;

CLEAR COLUMNS;
CLEAR BREAKS;
CLEAR COMPUTES;

SPOOL OFF


