--Joshua Wong, Raul Cano, Thomas Becannon
--12/11/2024
--CS 325 - Fall 2024
BEGIN
   EXECUTE IMMEDIATE 'DELETE FROM Courses';
   EXECUTE IMMEDIATE 'DELETE FROM Schedule';
   EXECUTE IMMEDIATE 'DELETE FROM Payment';
   EXECUTE IMMEDIATE 'DELETE FROM Progress_Dashboard';
   EXECUTE IMMEDIATE 'DELETE FROM Faculty';
   EXECUTE IMMEDIATE 'DELETE FROM Using';
   EXECUTE IMMEDIATE 'DELETE FROM Text';
   EXECUTE IMMEDIATE 'DELETE FROM Test';
   EXECUTE IMMEDIATE 'DELETE FROM Worksheets';
   EXECUTE IMMEDIATE 'DELETE FROM Faculty_contrib';
   EXECUTE IMMEDIATE 'DELETE FROM Learning_resources';
   EXECUTE IMMEDIATE 'DELETE FROM Feedback';
   EXECUTE IMMEDIATE 'DELETE FROM Tutor_subj';
   EXECUTE IMMEDIATE 'DELETE FROM Tutor';
   EXECUTE IMMEDIATE 'DELETE FROM Individual';
   EXECUTE IMMEDIATE 'DELETE FROM Group_Stu';
   EXECUTE IMMEDIATE 'DELETE FROM TutorConnect_Group';
   EXECUTE IMMEDIATE 'DELETE FROM TutorConnect_Session';
   EXECUTE IMMEDIATE 'DELETE FROM student';
END;
/
prompt inserting student table
INSERT ALL
    INTO student VALUES ('216432', 'Adam', 'Davis', 'adavis209@humboldt.edu', 'Math')
    INTO student VALUES ('216487', 'Eve', 'Johnson', 'ejohnson223@humboldt.edu', 'Physics')
    INTO student VALUES ('217543', 'John', 'Smith', 'jsmith458@humboldt.edu', 'Computer Science')
    INTO student VALUES ('218975', 'Sophia', 'Martinez', 'smartinez981@humboldt.edu', 'Biology')
    INTO student VALUES ('215682', 'David', 'Taylor', 'dtaylor340@humboldt.edu', 'Chemistry')
    INTO student VALUES ('219345', 'Emily', 'Brown', 'ebrown672@humboldt.edu', 'English')
    INTO student VALUES ('214990', 'Michael', 'Williams', 'mwilliams129@humboldt.edu', 'History')
    INTO student VALUES ('217876', 'Olivia', 'Jones', 'ojones774@humboldt.edu', 'Psychology')
    INTO student VALUES ('216112', 'James', 'Garcia', 'jgarcia256@humboldt.edu', 'Math')
    INTO student VALUES ('218433', 'Isabella', 'Miller', 'imiller847@humboldt.edu', 'Engineering')
    INTO student VALUES ('215244', 'Benjamin', 'Davis', 'bdavis532@humboldt.edu', 'Computer Science')
    INTO student VALUES ('219567', 'Charlotte', 'Rodriguez', 'crodriguez412@humboldt.edu', 'Math')
    INTO student VALUES ('214876', 'Lucas', 'Martinez', 'lmartinez999@humboldt.edu', 'Economics')
    INTO student VALUES ('216839', 'Mia', 'Hernandez', 'mhernandez344@humboldt.edu', 'Computer Science')
    INTO student VALUES ('217999', 'Henry', 'Lopez', 'hlopez221@humboldt.edu', 'Biology')
SELECT 1 FROM DUAL;


prompt inserting TutorConnect_Session table
Insert all
	into TutorConnect_Session Values ('015674', '10-Sep-2024', 'Computer Science', 'Group')
	into TutorConnect_Session Values ('015689', '15-Sep-2024', 'Math', 'Individual')
	into TutorConnect_Session Values ('015703', '21-Sep-2024', 'Physics', 'Individual')
	into TutorConnect_Session Values ('015718', '22-Sep-2024', 'Biology', 'Individual')
	into TutorConnect_Session Values ('015732', '25-Sep-2024', 'Chemistry', 'Individual')
	into TutorConnect_Session Values ('015746', '30-Sep-2024', 'Computer Science', 'Individual')
	into TutorConnect_Session Values ('015760', '01-Oct-2024', 'Math', 'Group')
	into TutorConnect_Session Values ('015775', '02-Oct-2024', 'Psychology', 'Individual')
	into TutorConnect_Session Values ('015761', '01-Oct-2024', 'Math', 'Group')
	into TutorConnect_Session Values ('015774', '02-Oct-2024', 'Psychology', 'Individual')
	into TutorConnect_Session Values ('015789', '05-Oct-2024', 'Engineering', 'Individual')
	into TutorConnect_Session Values ('015803', '05-Oct-2024', 'Economics', 'Individual')
	into TutorConnect_Session Values ('015818', '10-Oct-2024', 'Computer Science', 'Individual')
	into TutorConnect_Session Values ('015832', '14-Oct-2024', 'Biology', 'Group')
	into TutorConnect_Session Values ('015846', '16-Oct-2024', 'Math', 'Individual')
	into TutorConnect_Session Values ('015860', '17-Oct-2024', 'Computer Science', 'Individual')
	into TutorConnect_Session Values ('015874', '19-Oct-2024', 'Math', 'Individual')
	into TutorConnect_Session Values ('015974', '20-Oct-2024', 'History', 'Individual')
SELECT 1 FROM DUAL;

prompt inserting TutorConnect_Group table
INSERT ALL
	into TutorConnect_Group Values ('015674', '798561') -- ComputerSci
	into TutorConnect_Group Values ('015689', '798561')
	into TutorConnect_Group Values ('015760', '798213') --Math
	into TutorConnect_Group Values ('015775', '798213')
	into TutorConnect_Group Values ('015832', '798678') --Biology
	into TutorConnect_Group Values ('015874', '798678')
SELECT 1 FROM DUAL;

prompt inserting Group_Stu table
INSERT ALL
	into Group_Stu values ('015674', '216432')
	into Group_Stu values ('015674', '216487')
	into Group_Stu values ('015674', '217543')
	into Group_Stu values ('015689', '218975')
	into Group_Stu values ('015689', '215682')
	into Group_Stu values ('015760', '219345')
	into Group_Stu values ('015760', '214990')
	into Group_Stu values ('015775', '217876')
	into Group_Stu values ('015775', '216112')
	into Group_Stu values ('015832', '218433')
	into Group_Stu values ('015832', '215244')
	into Group_Stu values ('015832', '219567')
	into Group_Stu values ('015874', '214876')
	into Group_Stu values ('015874', '216839')
	into Group_Stu values ('015874', '217999')
SELECT 1 FROM DUAL;

prompt inserting Individual table
INSERT ALL
	INTO Individual VALUES ('015689', '799356', '216432') -- Math
	INTO Individual VALUES ('015703', '798347', '216487') -- Physics
	INTO Individual VALUES ('015718', '799832', '217999') -- Biology
	INTO Individual VALUES ('015732', '798890', '215682') -- Chemistry
	INTO Individual VALUES ('015746', '799610', '216839') -- Computer Science
	INTO Individual VALUES ('015775', '799245', '217876') -- Psychology
	INTO Individual VALUES ('015789', '799478', '218433') -- Engineering
	INTO Individual VALUES ('015803', '799589', '214876') -- Economics
	INTO Individual VALUES ('015818', '799610', '215244') -- Computer Science
	INTO Individual VALUES ('015846', '799943', '216112') -- Math
	INTO Individual VALUES ('015860', '798561', '216432') -- Computer Science
	INTO Individual VALUES ('015874', '799356', '219567') -- Math
	INTO Individual VALUES ('015974', '799124', '214990') -- History
SELECT * FROM DUAL;

prompt inserting Tutor table
INSERT ALL
	INTO Tutor VALUES ('798213', 'David', 'Johnson', 'djon198@gmail.com', 5)
	INTO Tutor VALUES ('798347', 'Eve', 'Smith', 'esmith239@gmail.com', 4)
	INTO Tutor VALUES ('798561', 'John', 'Brown', 'jbrown456@gmail.com', 3)
	INTO Tutor VALUES ('798678', 'Sophia', 'Lee', 'slee789@gmail.com', 4)
	INTO Tutor VALUES ('798890', 'Michael', 'Davis', 'mdavis320@gmail.com', 5)
	INTO Tutor VALUES ('799001', 'Emily', 'Wilson', 'ewilson112@gmail.com', 3)
	INTO Tutor VALUES ('799124', 'James', 'Taylor', 'jtaylor214@gmail.com', 2)
	INTO Tutor VALUES ('799245', 'Olivia', 'Martinez', 'omartinez543@gmail.com', 5)
	INTO Tutor VALUES ('799356', 'Benjamin', 'Anderson', 'banderson678@gmail.com', 4)
	INTO Tutor VALUES ('799478', 'Charlotte', 'Moore', 'cmoore901@gmail.com', 4)
	INTO Tutor VALUES ('799589', 'Lucas', 'Jackson', 'ljackson345@gmail.com', 3)
	INTO Tutor VALUES ('799610', 'Mia', 'White', 'mwhite876@gmail.com', 2)
	INTO Tutor VALUES ('799721', 'Henry', 'Lopez', 'hlopez432@gmail.com', 5)
	INTO Tutor VALUES ('799832', 'Isabella', 'Harris', 'iharris654@gmail.com', 4)
	INTO Tutor VALUES ('799943', 'Aiden', 'Clark', 'aclark987@gmail.com', 3)
SELECT * FROM DUAL;

prompt inserting Tutor_subj table
INSERT ALL
	INTO Tutor_subj VALUES ('798213', 'Math')
	INTO Tutor_subj VALUES ('798347', 'Physics')
	INTO Tutor_subj VALUES ('798561', 'Computer Science')
	INTO Tutor_subj VALUES ('798678', 'Biology')
	INTO Tutor_subj VALUES ('798890', 'Chemistry')
	INTO Tutor_subj VALUES ('799001', 'English')
	INTO Tutor_subj VALUES ('799124', 'History')
	INTO Tutor_subj VALUES ('799245', 'Psychology')
	INTO Tutor_subj VALUES ('799356', 'Math')
	INTO Tutor_subj VALUES ('799478', 'Engineering')
	INTO Tutor_subj VALUES ('799589', 'Economics')
	INTO Tutor_subj VALUES ('799610', 'Computer Science')
	INTO Tutor_subj VALUES ('799721', 'Math')
	INTO Tutor_subj VALUES ('799832', 'Biology')
	INTO Tutor_subj VALUES ('799943', 'Math')
SELECT * FROM DUAL;

prompt inserting Feedback table
INSERT ALL
	INTO Feedback VALUES ('216432', '799356', 'Good, helped a lot.', 5, '15-Sep-2024')
	INTO Feedback VALUES ('216487', '798347', 'Great tutor, very clear.', 5, '21-Sep-2024')
	INTO Feedback VALUES ('217999', '799832', 'Helped but didn''t communicate the best', 3, '22-Sep-2024')
	INTO Feedback VALUES ('215682', '798890', 'Awesome tutor', 5, '25-Sep-2024')
	INTO Feedback VALUES ('216839', '799610', 'Solid', 4, '30-Sep-2024')
	INTO Feedback VALUES ('217876', '799245', 'Simplified complex topics', 5, '02-Oct-2024')
	INTO Feedback VALUES ('218433', '799478', 'Average', 3, '05-Oct-2024')
	INTO Feedback VALUES ('214876', '799589', 'Didn''t help very much', 2, '05-Oct-2024')
	INTO Feedback VALUES ('215244', '799610', 'Excellent tutor', 5, '10-Oct-2024')
	INTO Feedback VALUES ('216112', '799943', 'Thanks for the help', 4, '16-Oct-2024')
	INTO Feedback VALUES ('216432', '798561', 'Great help', 5, '17-Oct-2024')
	INTO Feedback VALUES ('219567', '799356', 'Had a hard time working with them.', 1, '19-Oct-2024')
	INTO Feedback VALUES ('214990', '799124', 'Very helpful', 5, '20-Oct-2024')
	INTO Feedback VALUES ('217543', '798561', 'Thanks!', 5, '10-Sep-2024')
	INTO Feedback VALUES ('217999', '798678', 'A lot of help', 4, '14-Oct-2024')
SELECT * FROM DUAL;

prompt inserting Faculty table
INSERT ALL
	INTO Faculty VALUES ('342190', 'Greg', 'Olsen', 'Computer Science', 'gol12@humboldt.edu', 'BSS 210')
	INTO Faculty VALUES ('342191', 'Anna', 'Smith', 'Math', 'asmith98@humboldt.edu', 'BSS 201')
	INTO Faculty VALUES ('342192', 'Michael', 'Jones', 'Physics', 'mjones43@humboldt.edu', 'SCI A 110')
	INTO Faculty VALUES ('342193', 'Sophia', 'Martinez', 'Chemistry', 'smartinez56@humboldt.edu', 'SCI B 202')
	INTO Faculty VALUES ('342194', 'David', 'Lee', 'Biology', 'dlee77@humboldt.edu', 'SCI A 120')
	INTO Faculty VALUES ('342195', 'Emily', 'Johnson', 'Engineering', 'ejohnson82@humboldt.edu', 'Founders Hall 305')
	INTO Faculty VALUES ('342196', 'James', 'Brown', 'History', 'jbrown23@humboldt.edu', 'SH 110')
	INTO Faculty VALUES ('342197', 'Olivia', 'Davis', 'Computer Science', 'odavis63@humboldt.edu', 'BSS 205')
	INTO Faculty VALUES ('342198', 'John', 'Wilson', 'Psychology', 'jwilson99@humboldt.edu', 'Founders Hall 303')
	INTO Faculty VALUES ('342199', 'Isabella', 'Miller', 'Math', 'imiller24@humboldt.edu', 'BSS 210')
	INTO Faculty VALUES ('342200', 'Lucas', 'Anderson', 'Computer Science', 'landerson34@humboldt.edu', 'BSS 107')
	INTO Faculty VALUES ('342201', 'Charlotte', 'Moore', 'Economics', 'cmoore77@humboldt.edu', 'BSS 305')
	INTO Faculty VALUES ('342202', 'Benjamin', 'Harris', 'Biology', 'bharris90@humboldt.edu', 'SciB 101')
	INTO Faculty VALUES ('342203', 'Aiden', 'Clark', 'English', 'aclark12@humboldt.edu', 'ART 202')
	INTO Faculty VALUES ('342204', 'Mia', 'Lopez', 'Computer Science', 'mlopez22@humboldt.edu', 'BSS 101')
	INTO Faculty VALUES ('342205', 'Henry', 'Taylor', 'Math', 'htaylor56@humboldt.edu', 'BSS 301')
SELECT * FROM DUAL;

prompt inserting Progress_Dashboard table
INSERT ALL
	INTO Progress_Dashboard VALUES ('048763', '216432')
	INTO Progress_Dashboard VALUES ('048864', '216487')
	INTO Progress_Dashboard VALUES ('048965', '217543')
	INTO Progress_Dashboard VALUES ('048166', '218975')
	INTO Progress_Dashboard VALUES ('048267', '215682')
	INTO Progress_Dashboard VALUES ('048368', '219345')
	INTO Progress_Dashboard VALUES ('048469', '214990')
	INTO Progress_Dashboard VALUES ('048570', '217876')
	INTO Progress_Dashboard VALUES ('048671', '216112')
	INTO Progress_Dashboard VALUES ('048772', '218433')
	INTO Progress_Dashboard VALUES ('048873', '215244')
	INTO Progress_Dashboard VALUES ('048974', '219567')
	INTO Progress_Dashboard VALUES ('048175', '214876')
	INTO Progress_Dashboard VALUES ('048276', '216839')
	INTO Progress_Dashboard VALUES ('048377', '217999')
SELECT * FROM DUAL;

prompt inserting Payment table
INSERT ALL
	INTO Payment VALUES ('011110', '048763', '216432', 0, null)
	INTO Payment VALUES ('011111', '048864', '216487', 50, '15-Dec-2024')
	INTO Payment VALUES ('011112', '048965', '217543', 0, null)
	INTO Payment VALUES ('011113', '048166', '218975', 0, null)
	INTO Payment VALUES ('011114', '048267', '215682', 30, '15-Dec-2024')
	INTO Payment VALUES ('011115', '048368', '219345', 0, null)
	INTO Payment VALUES ('011116', '048469', '214990', 0, null)
	INTO Payment VALUES ('011117', '048570', '217876', 100, '15-Dec-2024')
	INTO Payment VALUES ('011118', '048671', '216112', 0, null)
	INTO Payment VALUES ('011119', '048772', '218433', 0, null)
	INTO Payment VALUES ('011120', '048873', '215244', 0, null)
	INTO Payment VALUES ('011121', '048974', '219567', 0, null)
	INTO Payment VALUES ('011122', '048175', '214876', 0, null)
	INTO Payment VALUES ('011123', '048276', '216839', 40, '15-Dec-2024')
	INTO Payment VALUES ('011124', '048377', '217999', 0, null)
SELECT * FROM DUAL;

prompt inserting Courses table
INSERT ALL
	-- For Student '216432' (Adam Davis)
	INTO Courses VALUES ('978422', '048763', '216432', 'Computer Science', 10, 10)
	INTO Courses VALUES ('978401', '048763', '216432', 'Math', 7, 10)
	INTO Courses VALUES ('978412', '048763', '216432', 'Chemistry', 8, 10)
	-- For Student '216487' (Eve Johnson)
	INTO Courses VALUES ('978423', '048864', '216487', 'Physics', 9, 10)
	INTO Courses VALUES ('978402', '048864', '216487', 'Math', 6, 10)
	INTO Courses VALUES ('978413', '048864', '216487', 'Biology', 8, 10)
	-- For Student '217543' (John Smith)
	INTO Courses VALUES ('978424', '048965', '217543', 'Computer Science', 10, 10)
	INTO Courses VALUES ('978403', '048965', '217543', 'Math', 5, 10)
	INTO Courses VALUES ('978414', '048965', '217543', 'Chemistry', 7, 10)
	-- For Student '218975' (Sophia Martinez)
	INTO Courses VALUES ('978425', '048166', '218975', 'Psychology', 8, 10)
	INTO Courses VALUES ('978404', '048166', '218975', 'Math', 9, 10)
	INTO Courses VALUES ('978415', '048166', '218975', 'Literature', 6, 10)
	-- For Student '215682' (David Taylor)
	INTO Courses VALUES ('978426', '048267', '215682', 'Chemistry', 7, 10)
	INTO Courses VALUES ('978405', '048267', '215682', 'Math', 6, 10)
	INTO Courses VALUES ('978416', '048267', '215682', 'Physics', 8, 10)
	-- For Student '219345' (Emily Brown)
	INTO Courses VALUES ('978427', '048368', '219345', 'History', 8, 10)
	INTO Courses VALUES ('978406', '048368', '219345', 'Math', 9, 10)
	INTO Courses VALUES ('978417', '048368', '219345', 'Computer Science', 7, 10)
	-- For Student '214990' (Michael Williams)
	INTO Courses VALUES ('978428', '048469', '214990', 'Math', 6, 10)
	INTO Courses VALUES ('978407', '048469', '214990', 'Physics', 8, 10)
	-- For Student '218433' (Isabella Miller)
	INTO Courses VALUES ('978431', '048772', '218433', 'Biology', 7, 10)
	INTO Courses VALUES ('978408', '048772', '218433', 'Math', 10, 10)
	INTO Courses VALUES ('978421', '048772', '218433', 'Computer Science', 9, 10)
	-- For Student '215244' (Benjamin Davis)
	INTO Courses VALUES ('978409', '048873', '215244', 'Math', 8, 10)
	INTO Courses VALUES ('978433', '048873', '215244', 'Economics', 6, 10)
	-- For Student '219567' (Charlotte Rodriguez)
	INTO Courses VALUES ('978411', '048974', '219567', 'Math', 7, 10)
	INTO Courses VALUES ('978435', '048974', '219567', 'Psychology', 9, 10)
	-- For Student '214876' (Lucas Martinez)
	INTO Courses VALUES ('978527', '048175', '214876', 'Math', 8, 10)
	INTO Courses VALUES ('978437', '048175', '214876', 'English', 6, 10)
	-- For Student '216839' (Mia Hernandez)
	INTO Courses VALUES ('978438', '048276', '216839', 'Math', 9, 10)
	INTO Courses VALUES ('978414', '048276', '216839', 'Biology', 7, 10)
	INTO Courses VALUES ('978439', '048276', '216839', 'History', 8, 10)
	-- For Student '217999' (Henry Lopez)
	INTO Courses VALUES ('978440', '048377', '217999', 'Computer Science', 10, 10)
	INTO Courses VALUES ('978401', '048377', '217999', 'Math', 8, 10)
	INTO Courses VALUES ('978441', '048377', '217999', 'Chemistry', 6, 10)
SELECT * FROM DUAL;

prompt inserting Learning_resources table
INSERT ALL
	INTO Learning_resources VALUES ('000001', 'CS', 'WS')
	INTO Learning_resources VALUES ('000002', 'CS', 'WS')
	INTO Learning_resources VALUES ('000003', 'CS', 'WS')
	INTO Learning_resources VALUES ('000004', 'CS', 'WS')
	INTO Learning_resources VALUES ('000005', 'CS', 'WS')
	INTO Learning_resources VALUES ('000006', 'CS', 'WS')
	INTO Learning_resources VALUES ('000007', 'CHEM', 'WS')
	INTO Learning_resources VALUES ('000008', 'CHEM', 'WS')
	INTO Learning_resources VALUES ('000009', 'BOT', 'WS')
	INTO Learning_resources VALUES ('000010', 'CS', 'WS')
	INTO Learning_resources VALUES ('000011', 'ES', 'WS')
	INTO Learning_resources VALUES ('000012', 'ES', 'WS')
	INTO Learning_resources VALUES ('000013', 'DS', 'WS')
	INTO Learning_resources VALUES ('000014', 'DS', 'WS')
	INTO Learning_resources VALUES ('000015', 'CS', 'WS')
	INTO Learning_resources VALUES ('000016', 'CS', 'Test')
	INTO Learning_resources VALUES ('000017', 'CS', 'Test')
	INTO Learning_resources VALUES ('000018', 'CS', 'Test')
	INTO Learning_resources VALUES ('000019', 'CS', 'Test')
	INTO Learning_resources VALUES ('000020', 'CS', 'Test')
	INTO Learning_resources VALUES ('000021', 'CS', 'Test')
	INTO Learning_resources VALUES ('000022', 'CHEM', 'Test')
	INTO Learning_resources VALUES ('000023', 'CS', 'Test')
	INTO Learning_resources VALUES ('000024', 'CS', 'Test')
	INTO Learning_resources VALUES ('000025', 'CS', 'Test')
	INTO Learning_resources VALUES ('000026', 'DS', 'Test')
	INTO Learning_resources VALUES ('000027', 'BIO', 'Test')
	INTO Learning_resources VALUES ('000028', 'BIO', 'Test')
	INTO Learning_resources VALUES ('000029', 'CS', 'Test')
	INTO Learning_resources VALUES ('000030', 'CS', 'Test')
	INTO Learning_resources VALUES ('000031', 'MATH', 'Text')
	INTO Learning_resources VALUES ('000032', 'ENG', 'Text')
	INTO Learning_resources VALUES ('000033', 'ES', 'Text')
	INTO Learning_resources VALUES ('000034', 'CS', 'Text')
	INTO Learning_resources VALUES ('000035', 'CS', 'Text')
	INTO Learning_resources VALUES ('000036', 'CS', 'Text')
	INTO Learning_resources VALUES ('000037', 'CS', 'Text')
	INTO Learning_resources VALUES ('000038', 'CS', 'Text')
	INTO Learning_resources VALUES ('000039', 'CS', 'Text')
	INTO Learning_resources VALUES ('000040', 'CS', 'Text')
	INTO Learning_resources VALUES ('000041', 'PSCI', 'Text')
	INTO Learning_resources VALUES ('000042', 'CS', 'Text')
	INTO Learning_resources VALUES ('000043', 'RS', 'Text')
	INTO Learning_resources VALUES ('000044', 'CS', 'Text')
	INTO Learning_resources VALUES ('000045', 'CS', 'Text')
SELECT 1 FROM DUAL;

prompt inserting Faculty_contrib table
Insert ALL
	INTO Faculty_contrib VALUES('000041', '342190')
	INTO Faculty_contrib VALUES('000042', '342191')
	INTO Faculty_contrib VALUES('000043', '342192')
	INTO Faculty_contrib VALUES('000012', '342193')
	INTO Faculty_contrib VALUES('000013', '342194')
	INTO Faculty_contrib VALUES('000044', '342195')
	INTO Faculty_contrib VALUES('000040', '342196')
	INTO Faculty_contrib VALUES('000039', '342197')
	INTO Faculty_contrib VALUES('000039', '342198')
	INTO Faculty_contrib VALUES('000039', '342199')
	INTO Faculty_contrib VALUES('000039', '342200')
	INTO Faculty_contrib VALUES('000039', '342201')
	INTO Faculty_contrib VALUES('000039', '342202')
	INTO Faculty_contrib VALUES('000039', '342203')
	INTO Faculty_contrib VALUES('000045', '342204')
SELECT 1 FROM DUAL;

prompt inserting Worksheets table
INSERT ALL
	INTO Worksheets VALUES('ws_500', '000001', 3, 1)
	INTO Worksheets VALUES('ws_510', '000002', 5, 1.4)
	INTO Worksheets VALUES('ws_511', '000003', 20, 5.3)
	INTO Worksheets VALUES('ws_512', '000004', 6, 2.9)
	INTO Worksheets VALUES('ws_513', '000005', 7, 3.7)
	INTO Worksheets VALUES('ws_514', '000006', 8, 5)
	INTO Worksheets VALUES('ws_515', '000007', 9, 8)
	INTO Worksheets VALUES('ws_516', '000008', 20, 9)
	INTO Worksheets VALUES('ws_517', '000009', 50, 10)
	INTO Worksheets VALUES('ws_518', '000010', 69, 9.4)
	INTO Worksheets VALUES('ws_519', '000011', 7, 9.5)
	INTO Worksheets VALUES('ws_520', '000012', 100, 3.2)
	INTO Worksheets VALUES('ws_521', '000013', 4, 1.1)
	INTO Worksheets VALUES('ws_522', '000014', 34, 6.5)
	INTO Worksheets VALUES('ws_523', '000015', 2, 5)
SELECT 1 FROM DUAL;

prompt inserting Test table
INSERT ALL
	INTO Test VALUES('000016', '000001', 'Math Test', '30 mins', 10)
	INTO Test VALUES('000017', '000002', 'Chemistry Test', '45 mins', 12)
	INTO Test VALUES('000018', '000003', 'Physics Test', '20 mins', 8)
	INTO Test VALUES('000019', '000004', 'Biology Test', '40 mins', 15)
	INTO Test VALUES('000021', '000005', 'Computer Science Test', '50 mins', 10)
	INTO Test VALUES('000022', '000006', 'Psychology Test', '35 mins', 9)
	INTO Test VALUES('000023', '000007', 'History Test', '25 mins', 11)
	INTO Test VALUES('000024', '000008', 'Introduction to Economics Test', '30 mins', 10)
	INTO Test VALUES('000025', '000009', 'English Test', '45 mins', 13)
	INTO Test VALUES('000026', '000010', 'Basic Literature Test', '20 mins', 7)
	INTO Test VALUES('000027', '000011', 'Advanced Math Test', '60 mins', 14)
	INTO Test VALUES('000028', '000012', 'Cybersecurity Test', '40 mins', 12)
	INTO Test VALUES('000029', '000013', 'Advanced Chemistry Test', '70 mins', 15)
	INTO Test VALUES('000030', '000014', 'Physics Test', '90 mins', 20)
	INTO Test VALUES('000031', '000015', 'Physics Test II', '90 mins', 20)
SELECT 1 FROM DUAL;

prompt inserting Text table
INSERT ALL
	INTO Text VALUES('000031', '000031', 'Introduction to Physics', 120, 'PDF')
	INTO Text VALUES('000032', '000032', 'Biology Fundamentals', 200, 'EPUB')
	INTO Text VALUES('000033', '000033', 'Advanced Mathematics', 300, 'Hardcover')
	INTO Text VALUES('000034', '000034', 'Astronomy Basics', 150, 'Paperback')
	INTO Text VALUES('000035', '000035', 'Music Theory', 100, 'PDF')
	INTO Text VALUES('000036', '000036', 'World History', 180, 'EPUB')
	INTO Text VALUES('000037', '000037', 'Computer Science Basics', 220, 'Hardcover')
	INTO Text VALUES('000038', '000038', 'Cybersecurity Fundamentals', 140, 'PDF')
	INTO Text VALUES('000039', '000039', 'Environmental Science', 160, 'Paperback')
	INTO Text VALUES('000040', '000040', 'Economics Introduction', 170, 'EPUB')
	INTO Text VALUES('000041', '000041', 'Psychology 101', 190, 'PDF')
	INTO Text VALUES('000042', '000042', 'Operating Systems Guide', 250, 'Hardcover')
	INTO Text VALUES('000043', '000043', 'Cryptography Principles', 300, 'PDF')
	INTO Text VALUES('000044', '000044', 'American Literature', 200, 'Paperback')
	INTO Text VALUES('000045', '000045', 'Philosophy of Ethics', 180, 'EPUB')
SELECT 1 FROM DUAL;

prompt inserting Using table
INSERT ALL
    INTO Using VALUES ('000001', '216432')
    INTO Using VALUES ('000002', '216487')
    INTO Using VALUES ('000003', '217543')
    INTO Using VALUES ('000004', '218975')
    INTO Using VALUES ('000005', '215682')
    INTO Using VALUES ('000006', '219345')
    INTO Using VALUES ('000007', '214990')
    INTO Using VALUES ('000008', '217876')
    INTO Using VALUES ('000009', '216112')
    INTO Using VALUES ('000010', '218433')
    INTO Using VALUES ('000011', '215244')
    INTO Using VALUES ('000012', '219567')
    INTO Using VALUES ('000013', '214876')
    INTO Using VALUES ('000014', '216839')
    INTO Using VALUES ('000015', '217999')
SELECT 1 FROM DUAL;

prompt inserting Schedule table
INSERT ALL
	-- For Student '216432' (Adam Davis)
	into Schedule Values ('978422', '048763', '216432', 3, '8:00am')
	into Schedule Values ('978401', '048763', '216432', 3, '1:00pm')
	into Schedule Values ('978412', '048763', '216432', 3, '3:00pm')
	-- For Student '216487' (Eve Johnson)
	into Schedule Values ('978423', '048864', '216487', 3, '9:00am')
	into Schedule Values ('978402', '048864', '216487', 3, '12:00pm')
	into Schedule Values ('978413', '048864', '216487', 3, '2:00pm')
	-- For Student '217543' (John Smith)
	into Schedule Values ('978424', '048965', '217543', 3, '8:00am')
	into Schedule Values ('978403', '048965', '217543', 3, '11:00am')
	into Schedule Values ('978414', '048965', '217543', 3, '3:00pm')
	-- For Student '218975' (Sophia Martinez)
	into Schedule Values ('978425', '048166', '218975', 3, '7:00am')
	into Schedule Values ('978404', '048166', '218975', 3, '1:00pm')
	into Schedule Values ('978415', '048166', '218975', 3, '4:00pm')
	-- For Student '215682' (David Taylor)
	into Schedule Values ('978426', '048267', '215682', 3, '9:00am')
	into Schedule Values ('978405', '048267', '215682', 3, '12:00pm')
	into Schedule Values ('978416', '048267', '215682', 3, '2:00pm')
	-- For Student '219345' (Emily Brown)
	into Schedule Values ('978427', '048368', '219345', 3, '8:00am')
	into Schedule Values ('978406', '048368', '219345', 3, '11:00am')
	into Schedule Values ('978417', '048368', '219345', 3, '1:00pm')
	-- For Student '214990' (Michael Williams)
	into Schedule Values ('978428', '048469', '214990', 3, '7:00am')
	into Schedule Values ('978407', '048469', '214990', 3, '10:00am')
	-- For Student '218433' (Isabella Miller)
	into Schedule Values ('978431', '048772', '218433', 3, '8:00am')
	into Schedule Values ('978408', '048772', '218433', 3, '11:00am')
	into Schedule Values ('978421', '048772', '218433', 3, '2:00pm')
	-- For Student '215244' (Benjamin Davis)
	into Schedule Values ('978409', '048873', '215244', 3, '9:00am')
	into Schedule Values ('978433', '048873', '215244', 3, '12:00pm')
	-- For Student '219567' (Charlotte Rodriguez)
	into Schedule Values ('978410', '048974', '219567', 3, '8:00am')
	into Schedule Values ('978435', '048974', '219567', 3, '1:00pm')
	-- For Student '214876' (Lucas Martinez)
	into Schedule Values ('978411', '048175', '214876', 3, '7:00am')
	into Schedule Values ('978437', '048175', '214876', 3, '2:00pm')
	-- For Student '216839' (Mia Hernandez)
	into Schedule Values ('978438', '048276', '216839', 3, '10:00am')
	into Schedule Values ('978414', '048276', '216839', 3, '1:00pm')
	into Schedule Values ('978439', '048276', '216839', 3, '4:00pm')
	-- For Student '217999' (Henry Lopez)
	into Schedule Values ('978440', '048377', '217999', 3, '8:00am')
	into Schedule Values ('978493', '048377', '217999', 3, '11:00am')
	into Schedule Values ('978441', '048377', '217999', 3, '2:00pm')
SELECT 1 FROM DUAL;
