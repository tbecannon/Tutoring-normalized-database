-- Thomas Becannon, Joshua Wong, Raul Cano
-- CS 325 - Fall 2024
-- December 11th 2024

spool 325reports_results.txt


SET PAGESIZE 100;
SET LINESIZE 60;
SET FEEDBACK OFF;


ttitle 'Tutor Session Assignment Breakdown';

col tutor_id heading 'Tutor ID' format a6;
col tutor_lname heading 'Tutor Last Name' format a30;
col tutor_email  heading 'Tutor Email' format a30;   
col tutor_feedback heading 'Feedback' format 999.99;
col sess_id heading 'Session ID' format a6;


break on tutor_id skip 1;

select t.tutor_id, t.tutor_lname, t.tutor_email, t.tutor_feedback, g.sess_id
from tutor t
join tutorconnect_group g on t.tutor_id = g.tutor_id
order by t.tutor_id, g.sess_id;

ttitle off
clear columns



SET PAGESIZE 100;
SET LINESIZE 80;
SET FEEDBACK OFF;


ttitle 'Student Payment Details Report' SKIP 1;

col stu_id heading 'Stu ID' format a6;
col stu_lname heading 'Student Last Name' format a30;
col stu_email heading 'Student Email'  format a60; 

col payment_id heading 'Payment ID' format a6;
col payment_owed heading 'Payment Owed' format 9999.99;
col date_due heading 'Due Date' format a10;

break on stu_id skip 1;

select s.stu_id, s.stu_fname, s.stu_lname, s.stu_email, s.stu_subj, p.payment_id, p.payment_owed, to_char(p.date_due, 'MM/DD/YYYY') as date_due
from student s
join payment p on s.stu_id = p.stu_id
order by s.stu_id, p.payment_id;

ttitle off
clear columns


SET PAGESIZE 50;
SET LINESIZE 150;
SET FEEDBACK OFF;


ttitle “Learning Resources”
select LR_ID, WS_ID, NUM_PROBLEMS "# Problems", DIFFICULTY "Difficulty"
from Worksheets
order by lr_id;
select LR_ID, TXT_ID, TEXT_TITLE "Title", PAGES "# Pages", FORMAT "Format"
from Text
order by lr_id;
select LR_ID, TEST_ID, TEST_TITLE "Title", TIME_TO_COMPLETE, NUM_PROBLEMS "# Problems"
from Test
order by lr_id;

ttitle off
clear columns





SET HEADING ON;
TTITLE “Resource Categories and Counts”;
COL resource_category HEADING “Category” format A20
COL total_resource_count HEADING “Total Count” 99.99;

SET LINESIZE 130;
SELECT lr_type AS resource_category, COUNT(*) AS total_resource_count
FROM learning_resources
GROUP BY lr_type
ORDER BY total_resource_count DESC;

ttitle off
clear columns




set heading on
ttitle "Faculty Contributions"
col faculty_name heading "Faculty" format a20

set linesize 130
SELECT f.fac_fname || ' ' || f.fac_lname faculty_name, COUNT(fc.lr_id) number_of_contributions
FROM Faculty f
JOIN Faculty_contrib fc ON f.fac_id = fc.fac_id
GROUP BY f.fac_id, f.fac_fname, f.fac_lname
ORDER BY number_of_contributions DESC;
set linesize 80
ttitle off
clear columns




SET PAGESIZE 50;
SET LINESIZE 150;
SET FEEDBACK OFF;

ttitle "Send to Collections"
col name heading "Broke Student" format a20
col send_collections heading "Revenue" format a10
col payment_owed heading "Debt" format $99999
set linesize 160
select stu_fname || ' ' || stu_lname name, date_due, payment_owed, case
    when date_due < sysdate then 'Now!'
    else 'wait :('
    end as send_collections
from Payment
join student on student.stu_id = payment.stu_id
where payment_owed != 0;
ttitle off
set linesize 80
clear columns






clear breaks
clear columns
clear computes
set space 1
set feedback 6
set pagesize 14
set linesize 80
set newpage 1
set heading on
-- to turn off titles set!
ttitle off
btitle off

spool off


