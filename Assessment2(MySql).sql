USE assessment1;

SHOW TABLES;

SELECT * FROM trainer_info;

INSERT INTO `assessment1`.`trainer_info` 
	(`Trainer_id`, 
	`Salutation`, 
	`Trainer_Name`, 
	`Trainer_Location`, 
	`Trainer_Track`, 
	`Trainer_Qualification`, 
	`Trainer_Experience`, 
	`Trainer_Email`, 
	`Trainer_Password`
	)
	VALUES
	('F001','Mr.','PANKAJ GHOSH','Pune','Java','Bachelor of Technology','12','Pankaj.Ghosh@alliance.com','fac1@123'),
('F002','Mr.','SANJAY RADHAKRISHNAN ','Bangalore','DotNet','Bachelor of Technology','12','Sanjay.Radhakrishnan@alliance.com','fac2@123'),
('F003','Mr.','VIJAY MATHUR','Chennai','Mainframe','Bachelor of Technology','10','Vijay.Mathur@alliance.com','fac3@123'),
('F004','Mrs.','NANDINI NAIR','Kolkata','Java','Master of Computer Applications','9','Nandini.Nair@alliance.com','fac4@123'),
('F005','Miss.','ANITHA PAREKH','Hyderabad','Testing','Master of Computer Applications','6','Anitha.Parekh@alliance.com','fac5@123'),
('F006','Mr.','MANOJ AGRAWAL ','Mumbai','Mainframe','Bachelor of Technology','9','Manoj.Agrawal@alliance.com','fac6@123'),
('F007','Ms.','MEENA KULKARNI','Coimbatore','Testing','Bachelor of Technology','5','Meena.Kulkarni@alliance.com','fac7@123'),
('F009','Mr.','SAGAR MENON ','Mumbai','Java','Master of Science In Information Technology','12','Sagar.Menon@alliance.com','fac8@123'
);

SELECT * FROM batch_info;


INSERT INTO `assessment1`.`batch_info` 
	(`Batch_Id`, 
	`Batch_Owner`, 
	`Batch_BU_Name`
	)
	VALUES
	('B001','MRS.SWATI ROY','MSP'),
('B002','MRS.ARURNA K','HEALTHCARE'),
('B003','MR.RAJESH KRISHNAN','LIFE SCIENCES'),
('B004','MR.SACHIN SHETTY','BFS'),
('B005','MR.RAMESH PATEL','COMMUNICATIONS'),
('B006','MRS.SUSAN CHERIAN','RETAIL & HOSPITALITY'),
('B007','MRS.SAMPADA JAIN','MSP'),
('B008','MRS.KAVITA REGE','BPO'),
('B009','MR.RAVI SEJPAL','MSP');

SELECT * FROM MODULE_INFO


INSERT INTO `assessment1`.`module_info` 
	(`Module_Id`, 
	`Module_Name`, 
	`Module_Duration`
	)
	VALUES
	('O10SQL','Oracle 10g SQL' ,'16'),
('O10PLSQL','Oracle 10g PL/ SQL ','16'),
('J2SE','Core Java SE 1.6','288'),
('J2EE','Advanced Java EE 1.6','80'),
('JAVAFX','JavaFX 2.1','80'),
('DOTNT4','.Net Framework 4.0 ','50'),
('SQL2008','MS SQl Server 2008','120'),
('MSBI08','MS BI Studio 2008','158'),
('SHRPNT','MS Share Point ','80'),
('ANDRD4','Android 4.0','200'),
('EM001','Instructor','0'),
('EM002','Course Material','0'),
('EM003','Learning Effectiveness','0'),
('EM004','Environment','0'),
('EM005','Job Impact','0'),
('TM001','Attendees','0'),
('TM002','Course Material','0'),
('TM003','Environment','0');

SELECT * FROM associate_info;

INSERT INTO `assessment1`.`associate_info` 
	(`Associate_Id`, 
	`Salutation`, 
	`Associate_Name`, 
	`Associate_Location`, 
	`Associate_Track`, 
	`Associate_Qualification`, 
	`Associate_Email`, 
	`Associate_Password`
	)
	VALUES
	('A001','Miss.','GAYATHRI NARAYANAN','Gurgaon','Java','Bachelor of Technology','Gayathri.Narayanan@hp.com','tne1@123'),
	('A002','Mrs.','RADHIKA MOHAN','Kerala','Java','Bachelor of Engineering In Information Technology','Radhika.Mohan@cognizant.com','tne2@123'),
	('A003','Mr.','KISHORE SRINIVAS','Chennai','Java','Bachelor of Engineering In Computers','Kishore.Srinivas@ibm.com','tne3@123'),
	('A004','Mr.','ANAND RANGANATHAN','Mumbai','DotNet','Master of Computer Applications','Anand.Ranganathan@finolex.com','tne4@123'),
	('A005','Miss.','LEELA MENON','Kerala','Mainframe','Bachelor of Engineering In Information Technology','Leela.Menon@microsoft.com','tne5@123'),
	('A006','Mrs.','ARTI KRISHNAN','Pune','Testing','Master of Computer Applications','Arti.Krishnan@cognizant.com','tne6@123'),
	('A007','Mr.','PRABHAKAR SHUNMUGHAM','Mumbai','Java','Bachelor of Technology','Prabhakar.Shunmugham@honda.com','tne7@123');

SELECT * FROM questions;


INSERT INTO `assessment1`.`questions` 
	(`Question_Id`, 
	`Module_Id`, 
	`Question_Text`
	)
	VALUES
	('Q001','EM001','Instructor knowledgeable and able to handle all your queries.'),
('Q002','EM001','All the topics in a particular course handled by the trainer without any gaps or slippages.'),
('Q003','EM002','The course materials presentation, handson, etc. refered during the training are relevant and useful.'),
('Q004','EM002','The Hands on session adequate enough to grasp the understanding of the topic.'),
('Q005','EM002','The reference materials suggested for each module are adequate.'),
('Q006','EM003','Knowledge and skills presented in this training are applicatible at your work.'),
('Q007','EM003','This training increases my proficiency level.'),
('Q008','EM004','The physical environment e.g. classroom space, air-conditioning was conducive to learning.'),
('Q009','EM004','The software/hardware environment provided was sufficient for the purpose of the training.'),
('Q010','EM005','This training will improve your job performance.'),
('Q011','EM005','This training align with the business priorities and goals.'),
('Q012','TM001','Participants were receptive and had attitude towards learning.'),
('Q013','TM001','All participats gained the knowledge and the practical skills after this training.'),
('Q014','TM002','The course materials presentation, handson, etc. available for the session covers the entire objectives of the course.'),
('Q015','TM002','Complexity of the course is adequate for the particpate level.'),
('Q016','TM002','Case study and practical demos helpful in understanding of the topic.'),
('Q017','TM003','The physical environment e.g. classroom space, air-conditioning was conducive to learning.'),
('Q018','TM003','The software/hardware environment provided was adequate for the purpose of the training.');



INSERT INTO `assessment1`.`associate_status` 
	(`Associate_Id`, 
	`Module_Id`, 
	`Start_Date`, 
	`End_Date`, 
	`AFeedbackGiven`,
	`TFeedbackGiven`,
	`Batch_Id`, 
	`Trainer_Id`
	)
	VALUES
('A003','MSBI08','2009-6-26','2009-6-29','','','B007','F006'),
('A004','MSBI08','2009-6-26','2009-6-29','','','B007','F006'),
('A002','ANDRD4','2010-6-5','2010-6-28','','','B008','F005'),
('A005','ANDRD4','2010-6-5','2010-6-28','','','B008','F005'),
('A003','ANDRD4','2011-8-1','2011-8-20','','','B009','F005'),
('A006','ANDRD4','2011-8-1','2011-8-20','','','B009','F005');


SELECT * FROM associate_status;

SELECT * FROM trainer_info;

/* Change the password of trainer F004 from fac4@123 to nn4@123 */
UPDATE trainer_info
SET Trainer_Password = 'nn4@123'
WHERE Trainer_id='F004';

/* Remove following record form associate_status table
A003,J2EE,B004,F004,2005-12-1,2005-12-25
*/

DELETE FROM associate_status
WHERE Associate_Id= 'A003' AND Module_Id='J2EE';

SELECT * FROM associate_status;


SELECT * FROM Trainer_Info;

/* Fetch first five trainers who have maximum years of experience & display there details */
SELECT Trainer_Experience
FROM trainer_info
LIMIT 5;

SELECT * FROM login_details;

/* Begin transaction & insert below to records into Login_Details
'U001' Admin1@123
'U002' Admin2@123
Perform rollback operation & verify whether any records are inserted in table or not.
 */
START TRANSACTION;

SELECT * FROM login_details;

INSERT INTO login_details
(`User_Id`,
`User_Password`)
VALUES
('U001','Admin1@123'),
('U002','Admin2@123');

ROLLBACK;

SELECT * FROM login_details;


/* Create a dummy user in database. Grant create & select table privilege to him/her.
Repeat the above all queries using login credentials of newly created user.
Revoke the privilege assigned to this newly created user.
 */
CREATE USER dummy IDENTIFIED BY "dummy";

SHOW GRANTS FOR dummy;

GRANT CREATE,SELECT ON ASSESSMENT1 TO dummy;
SELECT * FROM associate_info

REVOKE CREATE,SELECT ON ASSESSMENT1 FROM dummy;


/* Remove table Login_Details from database. */
DROP TABLE login_details;
SHOW TABLES;


