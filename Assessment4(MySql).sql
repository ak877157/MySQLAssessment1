USE assessment1;

/* ----Sub Queries---- */

/* 1.Write a query to display trainer IDs for all associates whose names contain the letter 'i'. Note: Use sub-query to achieve this. */

SELECT trainer_id
FROM associate_status
WHERE associate_id IN (SELECT associate_id FROM associate_info WHERE associate_name LIKE '%i%');


/* 2.Write a query to display trainer IDs for all associates whose names do not contain the letter 'i'.
Note: Use sub-query to achieve this. */

SELECT trainer_id
FROM associate_status
WHERE associate_id NOT IN (SELECT associate_id FROM associate_info WHERE associate_name LIKE '%i%');




/* 3.Write a query to display trainer ID and trainer rating for the trainers who handled J2EE module. Hint: Use trainer_feedback and associate status tables.
Note: Use sub-query to achieve this. */

SELECT trainer_id, trainer_rating 
FROM trainer_feedback 
WHERE module_id IN (SELECT module_id FROM associate_status WHERE module_id = 'J2EE');

/* 4.Write a query to pick up the maximum marks secured in the subject “EI05IP” and display the student name and registration number of the student who has secured it. */

CREATE TABLE student (Registeration__No INT PRIMARY KEY, Student_name VARCHAR(30), address VARCHAR(40), SUBJECT VARCHAR(40),marks INT);

INSERT INTO student(Registeration__No,Student_name,address,SUBJECT,marks) VALUES(101,'Ankush','HP','EI061P',80),(102,'Himanshu','Jharkhnad','EI05IP',95),
(103,'Ganesh','Andhra Pradesh','EI07IP',90);


SELECT Student_name, Registeration__No 
FROM Student 
WHERE marks IN (SELECT MAX(marks) FROM Student WHERE marks <(SELECT MAX(marks) FROM student WHERE SUBJECT='EI05IP'));


/* 5.Write a query to display the student name and registration number of the student who has secured second highest marks in the subject El05lP subject. */

SELECT Student_name, Registration__No, FROM Student BY salary 
ORDER BY EI05IP  DESC LIMIT 1,1;


/* ----Joins---- */
/* 1.Write a query to display trainer_id and batch_id details in such a way that we get all possible combinations of trainer IDs and batch IDs.
Hint: Use Trainer_Info and Batch_Info tables. */

SELECT t.trainer_id , b.batch_id 
FROM trainer_info AS t 
CROSS JOIN batch_info AS b ON t.trainer_id != b.batch_id;



/* 2.Write a query to display the records from all columns of tables associate_status and batch_info, wherever the batch_id in the two tables matches. */

SELECT associate_id, module_id,trainer_id,start_date,end_date ,batch_owner , Batch_BU_Name  
FROM associate_status AS a 
INNER JOIN batch_info AS b 
ON a.Batch_Id = b.Batch_Id;
 
 
/* 3.Write a query to display the associate IDs of the associates tagged to trainers and all the trainer IDs irrespective of whether there are any associates tagged to them or not. Hint: Use associate_status and trainer_info tables. */

SELECT a.associate_id , a.trainer_id  
FROM associate_status 
AS a 
LEFT OUTER JOIN trainer_info AS t 
ON a.Trainer_Id = t.Trainer_Id;

 