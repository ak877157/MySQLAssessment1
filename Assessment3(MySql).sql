/* ----MYSql Operators---- */

SELECT * FROM trainer_info;
 
 /* 1.Write a query which fetches and displays all the trainers who don’t have an email. */
SELECT trainer_id 
FROM trainer_info 
WHERE trainer_email="NULL"; 

/* 2.Write a query which displays the id, name, track and location of all trainers who has Experience > 4 years. */
SELECT trainer_id,trainer_name,trainer_track
FROM trainer_info
WHERE trainer_experience >4;

/* 3.Select all the modules whose duration > 200. */
SELECT * FROM module_info;

SELECT * FROM module_info
WHERE module_duration > 200;

/* 4.Display the trainer Id, trainer name whose trainer qualification is not ‘Bachelor of Technology’. */

SELECT * FROM trainer_info;

SELECT trainer_id,trainer_name
FROM trainer_info
WHERE trainer_qualification !='Bachelor of Technology';


/* 5.Select all the modules whose duration is in the range 200 and 300. */

SELECT * FROM module_info;

SELECT * FROM module_info
WHERE module_duration BETWEEN 200 AND 300;

/* 6.Display the trainer Id, trainer name whose first name starts with ‘M’. */

SELECT * FROM trainer_info;

SELECT trainer_id, trainer_name
FROM trainer_info
WHERE trainer_name LIKE 'M%';

/* 7.Display the trainer Id, trainer name whose first name has a character ‘O’. */

SELECT * FROM trainer_info;

SELECT trainer_id, trainer_name
FROM trainer_info
WHERE trainer_name LIKE '%O%';


/* 8.Display the names of all the modules where the module name is not null. */

SELECT * FROM module_info;

SELECT module_name
FROM module_info
WHERE module_name !='NULL';



/* ----MYSql Functions---- */

/* 1.Develop a query which will display the module name and module Infra fees of the entire module. The infra fee should be rounded to 2 decimal point. */

SELECT * FROM module_info;


/* 2.Develop a query which will list all the module id and module names in Module_Info table where in the first letter should be capital letter. */

SELECT * FROM module_info;

SELECT module_id, UPPER(LEFT(module_name,1)) AS NAME
FROM module_info;


/* 3.Develop a query which will display the module id and the number of days between the current date and module start date in associate_status table. */

SELECT module_id,
DATEDIFF(CURRENT_DATE, start_date) AS days
FROM associate_status;

/* 4.Develop a query which will concatenate the Module Name and Module id in the following format and display all the modules in the module_info table.
“< Module Name><Module id>” */

SELECT CONCAT(module_name,module_id) AS concatenation
FROM module_info;

/* 5.Develop a query which will display all the Module Name in upper case. */

SELECT UPPER(module_name)
FROM module_info;


/* 6.Develop a query which will display all the characters between 1 and 3 of the Module name column for all the modules in the Module_Info table. */

SELECT SUBSTRING(module_name,1,3) AS m_name
FROM module_info;

/* 7.Develop a query calculate average of all the module base fees, any records whose base fee is null needs to be considered as zero. */
 
 ALTER TABLE module_info ADD base_fees INT;

 SELECT *FROM module_info;

 INSERT INTO module_info VALUES('ANDR5', 'Learning Kotlin',60,5000),('Web Dev','Learning Servlet',30,10000);

 SELECT   module_name,CONCAT(base_fees) FROM module_info WHERE module_id = 'ANDR5';  
 
 
/* 8.Write a query which will convert Trainer_Info’s Trainer_Id to Number and add 100000 and display it for all the trainers in the Trainer_Info table. */



/* 9.Write a query which will convert Base_Fees into Varchar from the Module_info table.
And display in the following format
‘The Base Fees Amount for the module name’ <Module Name>’ is ’<Base Fees> */

ALTER TABLE module_info MODIFY base_fees VARCHAR(40);

INSERT INTO module_info VALUES ('Spring Boot','The BaseFees Amount for the module name Kantstar',20,5000);


/* Problem 10: Write a query which will display the total number of records in Module_Info table. */ 
 
SELECT COUNT(*) AS total_records FROM module_info;
