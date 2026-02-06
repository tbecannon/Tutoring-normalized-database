--Joshua Wong, Raul Cano, Thomas Becannon
--12/11/2024
--CS 325 - Fall 2024
BEGIN
   EXECUTE IMMEDIATE 'drop table Student cascade constraints';
EXCEPTION
   WHEN OTHERS THEN
  	IF SQLCODE != -942 THEN
     		RAISE;
  	END IF;
END;
/

-- Table with metadata for individual students
create table Student (
	STU_ID char(6),
	stu_fname varchar2(30),
	stu_lname varchar2(30),
	stu_email varchar2(60),
	stu_subj varchar2(60),
	primary key (stu_id)
);

BEGIN
   EXECUTE IMMEDIATE 'drop table TutorConnect_Session cascade constraints';
EXCEPTION
   WHEN OTHERS THEN
  	IF SQLCODE != -942 THEN
         	RAISE;
  	END IF;
END;
/
-- Table with metadata for the sessions
create table TutorConnect_Session(
	SESS_ID char(6),
	sess_date date,
	sess_subject varchar(50),
	sess_type varchar(100),
	primary key (SESS_ID)
);

BEGIN
   EXECUTE IMMEDIATE 'drop table TutorConnect_Group cascade constraints';
EXCEPTION
   WHEN OTHERS THEN
  	IF SQLCODE != -942 THEN
         	RAISE;
  	END IF;
END;
/
-- Table with metadata for the group which has group and
create table TutorConnect_Group (
	SESS_ID char(6),
	TUTOR_ID char(6),
	primary key (SESS_ID),
	foreign key (SESS_ID) references TutorConnect_Session,
	foreign key (TUTOR_ID) references Tutor
);

BEGIN
   EXECUTE IMMEDIATE 'drop table Group_Stu cascade constraints';
EXCEPTION
   WHEN OTHERS THEN
  	IF SQLCODE != -942 THEN
         	RAISE;
  	END IF;
END;
/
create table Group_Stu (
    sess_id char(6),
    stu_id char(6),
    foreign key(sess_id) references TutorConnect_Group,
    foreign key(stu_id) references Student,
    Primary key (sess_id, stu_id)
);

BEGIN
   EXECUTE IMMEDIATE 'drop table Individual cascade constraints';
EXCEPTION
   WHEN OTHERS THEN
  	IF SQLCODE != -942 THEN
         	RAISE;
  	END IF;
END;
/
create table Individual (
	SESS_ID char(6),
	TUTOR_ID char(6),
	STU_ID char(6),
	primary key (SESS_ID, TUTOR_ID, STU_ID),
	foreign key(SESS_ID) references TutorConnect_Session,
	foreign key(TUTOR_ID) references Tutor,
	foreign key(STU_ID) references Student
);

BEGIN
   EXECUTE IMMEDIATE 'drop table Tutor cascade constraints';
EXCEPTION
   WHEN OTHERS THEN
  	IF SQLCODE != -942 THEN
         	RAISE;
  	END IF;
END;
/
create table Tutor (
	tutor_id char(6),
	tutor_fname varchar2(30),
	tutor_lname varchar2(30),
	tutor_email varchar2(60),
	tutor_feedback number(5, 2) check (tutor_feedback between 0 and 5),
	primary key (tutor_id)
);

BEGIN
   EXECUTE IMMEDIATE 'drop table Tutor_subj cascade constraints';
EXCEPTION
   WHEN OTHERS THEN
  	IF SQLCODE != -942 THEN
         	RAISE;
  	END IF;
END;
/
create table Tutor_subj (
	tutor_id char(6),
	tutor_subject varchar2(30),
	Foreign key(tutor_id) references Tutor,
	Primary key (tutor_id, tutor_subject)
);

BEGIN
   EXECUTE IMMEDIATE 'drop table Feedback cascade constraints';
EXCEPTION
   WHEN OTHERS THEN
  	IF SQLCODE != -942 THEN
         	RAISE;
  	END IF;
END;
/
create table Feedback(
	STU_ID char(6),
	TUTOR_ID char(6),
	feedback_desc varchar(100),
	feedback_stars integer check (feedback_stars between 0 and 5),
	feedback_date date,
	primary key(STU_ID, TUTOR_ID),
	foreign key(STU_ID) references Student,
	foreign key(TUTOR_ID) references Tutor
);

BEGIN
   EXECUTE IMMEDIATE 'drop table Learning_resources cascade constraints';
EXCEPTION
   WHEN OTHERS THEN
  	IF SQLCODE != -942 THEN
         	RAISE;
  	END IF;
END;
/
--supertype table for learning resources
create table Learning_resources (
	lr_id char(6),
	lr_subject varchar(30),
	lr_type varchar(10) check (lr_type in ('WS', 'Test', 'Text')),
	primary key (lr_id)
);

BEGIN
   EXECUTE IMMEDIATE 'drop table Faculty_contrib cascade constraints';
EXCEPTION
   WHEN OTHERS THEN
  	IF SQLCODE != -942 THEN
         	RAISE;
  	END IF;
END;
/
--N:M table for Faculty contributions to learning materials
create table Faculty_contrib (
	lr_id char(6),
	fac_id char(6),
	foreign key(lr_id) references Learning_resources,
	foreign key (fac_id) references Faculty,
	primary key (lr_id, fac_id)
);

BEGIN
   EXECUTE IMMEDIATE 'drop table Worksheets cascade constraints';
EXCEPTION
   WHEN OTHERS THEN
  	IF SQLCODE != -942 THEN
         	RAISE;
  	END IF;
END;
/
--Table for worksheet metadata
create table Worksheets(
	ws_id char(6),
	lr_id char(6),
	num_problems number,
	difficulty number(5, 2) check (difficulty between 1 and 10),
	primary key (ws_id),
	foreign key (lr_id) references Learning_resources
);

BEGIN
   EXECUTE IMMEDIATE 'drop table Test cascade constraints';
EXCEPTION
   WHEN OTHERS THEN
  	IF SQLCODE != -942 THEN
         	RAISE;
  	END IF;
END;
/
--Table with metadata for Practice Tests
create table Test (
	test_id char(6),
	lr_id char(6),
	test_title varchar(50),
	time_to_complete varchar(20),
	num_problems integer check (num_problems > 0),
	primary key (test_id),
	foreign key (lr_id) references Learning_Resources
);

BEGIN
   EXECUTE IMMEDIATE 'drop table Using cascade constraints';
EXCEPTION
   WHEN OTHERS THEN
  	IF SQLCODE != -942 THEN
         	RAISE;
  	END IF;
END;
/
--Table for students using Learning_Resources
create table Using (
	lr_id char(6),
	stu_id char(6),
	primary key (lr_id, stu_id),
	foreign key (lr_id) references Learning_Resources,
	foreign key (stu_id) references Student
);

BEGIN
   EXECUTE IMMEDIATE 'drop table Text cascade constraints';
EXCEPTION
   WHEN OTHERS THEN
  	IF SQLCODE != -942 THEN
         	RAISE;
  	END IF;
END;
/

--Table for metadata store of texts
create table Text(
	txt_id char(6),
	lr_id char(6),
	text_title varchar(50),
	pages integer check (pages > 0),
	format varchar(50),
	primary key (txt_id),
	foreign key (lr_id) references Learning_resources
);

BEGIN
   EXECUTE IMMEDIATE 'drop table Faculty cascade constraints';
EXCEPTION
   WHEN OTHERS THEN
  	IF SQLCODE != -942 THEN
         	RAISE;
  	END IF;
END;
/
-- Faculty table is for each faculty member contributing to the tutoring system
create table Faculty(
	fac_id char(6),
	fac_fname varchar(50),
	fac_lname varchar(50),
	fac_subject varchar(50),
	fac_email varchar(50),
	fac_office varchar(50),
	primary key (fac_id)
);

BEGIN
   EXECUTE IMMEDIATE 'drop table Progress_Dashboard cascade constraints';
EXCEPTION
   WHEN OTHERS THEN
  	IF SQLCODE != -942 THEN
         	RAISE;
  	END IF;
END;
/
--Union SuperType for Progress Dashboards per Student
create table Progress_Dashboard (
	dash_id char(6),
	stu_id char(6),
	primary key (dash_id, stu_id),
	foreign key (stu_id) references Student
);

BEGIN
   EXECUTE IMMEDIATE 'drop table Payment cascade constraints';
EXCEPTION
   WHEN OTHERS THEN
  	IF SQLCODE != -942 THEN
         	RAISE;
  	END IF;
END;
/
--Payment Dashboard where students can see their statements and payments due
create table Payment (
	payment_id char(6),
	dash_id char(6),
	stu_id char(6),
	payment_owed number,
	date_due date,
	primary key (payment_id),
	foreign key (dash_id, stu_id) references Progress_Dashboard
);



BEGIN
   EXECUTE IMMEDIATE 'drop table Schedule cascade constraints';
EXCEPTION
   WHEN OTHERS THEN
  	IF SQLCODE != -942 THEN
         	RAISE;
  	END IF;
END;
/


-- Schedule is in union to progress dashboard for the student to be able to see their schedule
create table Schedule (
	course_id char(6),
	dash_id char(6),
	stu_id char(6),
	course_days integer,
	course_time varchar(20),
	primary key (course_id, stu_id),
	foreign key (dash_id, stu_id) references Progress_Dashboard,
	foreign key (course_id, stu_id) references Courses
);



BEGIN
   EXECUTE IMMEDIATE 'drop table Courses cascade constraints';
EXCEPTION
   WHEN OTHERS THEN
  	IF SQLCODE != -942 THEN
     	RAISE;
  	END IF;
END;
/

-- Courses is in union to progress dashboard for the student to be able to see their courses
create table Courses(
	course_id char(6),
	dash_id char(6),
	stu_id char(6),
	course_title varchar(50),
	course_grade number,
	weeks_completed integer check (weeks_completed > 0),
	primary key (course_id, dash_id),
	foreign key (dash_id, stu_id) references Progress_Dashboard
);

CREATE OR REPLACE PROCEDURE update_tutor_feedback_proc(p_tutor_id IN NUMBER) AS
BEGIN
    UPDATE Tutor
    SET tutor_feedback = (
        SELECT NVL(AVG(feedback_stars), 0)
        FROM Feedback
        WHERE tutor_id = p_tutor_id
    )
    WHERE tutor_id = p_tutor_id;
END;
/
CREATE OR REPLACE TRIGGER enqueue_tutor_feedback_job
AFTER INSERT OR UPDATE OR DELETE ON Feedback
FOR EACH ROW
BEGIN
    -- Use DBMS_JOB to defer the update task
    DECLARE
        l_job NUMBER;
    BEGIN
        DBMS_JOB.SUBMIT(
            job        => l_job,
            what       => 'update_tutor_feedback_proc(' || :NEW.tutor_id || ');',
            next_date  => SYSDATE,
            interval   => NULL
        );
        COMMIT; -- Ensure the job is submitted
    END;
END;
/
