/*
NAME: AARSH PARIMAL PATEL
Assignment-5
Semester-2
*/


/*
 Question 1
 
Write a CREATE table statement that has a PRIMARY KEY column and have that column auto generate a value on INSERT
 
*/

# Put your answer here

/*USING OUR SAMPLE DATABASE*/
USE SAMPLE;

/*CREATING THE FIRST TABLE */
CREATE TABLE STUDENT_RECORD (
SID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,  /*THE AUTO_INCREMENT WILL CONSECUTIVELY INCREASE THE VALUE*/
Student_Name varchar(100) NOT NULL,
Field_of_study varchar(100) NOT NULL,
Final_Grade numeric NOT NULL);




/*
 Question 2
 
 Write 5 INSERT statements that add data to the table from Question 1 but doesn't include the PRIMARY KEY to test the auto numbering 
 
*/
/*INSERTING THE DATA TO OUR TABLE*/
INSERT INTO STUDENT_RECORD VALUES 
("Alex", "Computers", 89), ("Aaron", "Business", 79), ("Ben", "Arts", 97), ("Will", "Robotics", 87), ("Elon", "Aviation", 95);
/*HERE THE VALUE OF THE FIRST COLUMN (SID) WILL INCREASE AUTOMATICALLY SO WE WILL ONLY WRITE ITS NAME AND WE WILL NOT INPUT ANY VALUE*/

/*
 Question 3
 
 Write an ALTER statment to add a date column to the table from Question 1 and set a default of January 1 2020 
 
*/

/*ADDING AN ALTER STATEMENT TO ADD THE DATE COLUMN AND SETTING THE DEFAULT VALUE*/
ALTER TABLE STUDENT_RECORD 
ADD COLUMN Graduation_date date NOT NULL DEFAULT '2020-01-01';
SELECT * FROM STUDENT_RECORD; /*THIS WILL DISPLAY OUR TABLE*/

/*
 Question 4
 
 Write an ALTER statment to remove the date column you just added to your table 
 
 
*/

/*ADDING AN ALTER STATEMENT TO DROP THE COLUMN*/
ALTER TABLE STUDENT_RECORD 
DROP COLUMN Graduation_date;
SELECT * FROM STUDENT_RECORD; /*THIS WILL DISPLAY OUR TABLE*/
/*
 Question 5
 
  Write a single ALTER statment to modify the name and datatype of two of your columns in your table from Question 1   
 
  
 */
 

/*MODIFYING THE NAME AND DATATYPES OF TWO COLUMNS FROM THE TABLE USING "CHANGE" */
ALTER TABLE STUDENT_RECORD 
CHANGE Field_of_study Field_name CHAR(50),
CHANGE Final_Grade Marks double;

SELECT * FROM STUDENT_RECORD; /*THIS WILL DISPLAY OUR TABLE*/
desc STUDENT_RECORD; /*THIS WILL DISPLAY THE DATATYPES AS WELL AS OTHER INFO*/
/*
 Question 6
 
  Write a single ALTER statment to add two columns to your table from Question 1, the first column needs a DEFAULT value, the second column needs to be put in between your first and second column of the table 
 
   
 */
 
/*ADDING AN ALTER STATEMENT TO ADD TWO NEW COLUMNS AND GIVING THE FIRST COLUMN A DEFAULT VALUE AND PLACING THE SECOND COLUMN AFTER THE FIRST COLUMN IN THE TABLE USING "AFTER" */
ALTER TABLE STUDENT_RECORD 
ADD COLUMN COLLEGE varchar(100) DEFAULT 'GEORGIAN', ADD column CAMPUS varchar(100) AFTER SID;
SELECT * FROM STUDENT_RECORD; /*THIS WILL DISPLAY OUR TABLE*/

/*
 Question 7
 
  Write a CREATE table statment that has an ID column (with a PRIMARY KEY and an AUTO generating number) and a description column.   
  ALTER the table from Question 1 to have that ID column added to it and make a FOREIGN KEY reference 
  INSERT records into the new table AND UPDATE the table from Question 1 with the new ID fields


 
 */
 
 /*CREATING OUR SECOND TABLE AND ADDING THE FOREIGN KEY TO IT*/
  CREATE TABLE Course_Record
(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    DESCRIPTION VARCHAR(100)
 );

ALTER TABLE STUDENT_RECORD
ADD COLUMN ID INT,
ADD FOREIGN KEY (ID) REFERENCES Course_Record(ID);

INSERT INTO Course_Record(DESCRIPTION) VALUES
("BEGINNER-LEVEL"), ("INTERMEDIATE-LEVEL"), ("PROFESSIONAL-LEVEL"), ("MASTER-LEVEL"), ("OTHER");

SELECT * FROM Course_Record; /*THIS WILL DISPLAY OUR TABLE*/
SELECT * FROM STUDENT_RECORD;/*THIS WILL DISPLAY OUR TABLE*/
 
 /*END OF THE ASSIGNMENT*/
