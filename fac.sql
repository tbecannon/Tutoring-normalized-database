
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
