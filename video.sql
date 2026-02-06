set feedback off;
@ 325design
@ 325populate
set feedback on;
host cat fac.sql
Begin 
	DBMS_SESSION.SLEEP(10);
END;
/
@ fac
host cat money.sql
Begin
	DBMS_SESSION.SLEEP(10);
END;
/
@ money

