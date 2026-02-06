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
