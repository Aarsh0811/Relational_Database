/*NAME: AARSH PARIMAL PATEL
Assignment-1
Semester-2 */

/*
 Question 1
 
 Write a statement to Create a database (make sure your database doesn't contain special characters) 
 
*/

# Put your answer here

CREATE DATABASE ASSIGNMENT1;


/*
 Question 2
 
 Write a statement to Drop that Database you created in Question 1   
 
*/
DROP DATABASE ASSIGNMENT1;


/*
 Question 3
 
 Write a statement to set the database you created to be the one that will be active for your session  
 
*/
CREATE DATABASE ASSIGNMENT1;
USE  ASSIGNMENT1;

/*
 Question 4
 
 Write a statement to Create a table that will have columns that represent all of the basic datatypes that are available in the databse  
 
 
*/
CREATE TABLE car_info (
id_of_cars int not null primary key, name varchar(150), model char(10), launch_date date, price float
);

/*
 Question 5
 
 Write 5 statements to add data to the table you created in question 4   ( 15 marks )
 
   
 */
INSERT INTO car_info 
VALUES
(10, "MERCEDES", "A-class", "2015-01-06", 100000.55),
(11, "BMW", "500-D", "2017-07-21", 90000.24),
(08, "LAMBHORGHINI", "URUS", "2021-08-24", 300000),
(12, "HONDA", "CIVIC", "2018-12-03", 50000.77),
(05, "AUDI", "A9", "2019-04-11", 100000.24);

SELECT * FROM car_info;

/*
 Question 6
 
 Write 2 statements to Create two tables that have a way to force uniqueness from row to row ( make sure your table and column names are describe the content of the table) 
 
  
 */
CREATE table Bank_info(
Account_no int not null primary key, name varchar(150), Account_balance float, Bank_location char(20), Date_of_birth date
);
CREATE table company_info(
Employee_no int not null primary key, name varchar(150), Department char(25), Salary float, Date_of_joining date 
);

/*
 Question 7
 
 Write 5 statements to add to the first table you created in question 6   
 
 */
INSERT INTO Bank_info 
VALUES
(151102334, "KEITH", 90345.22, "TORONTO", "1978-04-09"),
(1245782454, "KIN", 54637.34, "BARRIE","1990-06-11"),
(1375636346, "JOHN", 145135.78, "LONDON", "1985-12-29"),
(1475775376, "HENRY", 24654.64, "KITCHNER", "2001-01-09"),
(1596957845, "DICKENS", 904342.79, "OTTAWA", "1991-11-11");

SELECT * FROM Bank_info ;

INSERT INTO company_info 
VALUES
(2334, "HARRY", "FINANCE", 123432.43, "2008-04-09"),
(5554, "ETHAN", "TECH", 200130.44,"2012-06-11"),
(6346, "SIMON", "MANAGEMENT", 100333.48, "2010-12-29"),
(5376, "JOSH", "LAW", 198314.53, "2011-01-09"),
(7845, "TOBI", "FITNESS", 100002.52, "2016-11-11");

SELECT * FROM company_info ;

