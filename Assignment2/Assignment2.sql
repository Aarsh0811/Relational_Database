/* NAME: AARSH PARIMAL PATEL
Assignment-2
Semester-2
*/

 CREATE DATABASE ASSIGNMENT2;
 USE ASSIGNMENT2;
 
 
 
 /*
 Question 1
 
 Write 2 statements to Create two tables that have a way to force uniqueness from row to row and are related by one of their columns ( make sure you have a least 1 date column )
 
  
 */
 CREATE TABLE student_record (
 Student_ID int not null , 
 First_Name varchar(40) not null,
 Last_Name varchar (40) not null, 
 Course_ID int not null primary key, 
 Total_fees float not null,
 Previous_grades numeric not null);
 
CREATE TABLE course_info(
Course_ID int references Student_record(Course_ID),
Course_name varchar(40) not null,
Start_date date not null
);
 /*
 Question 2
/////// NOTE rember the order of which table you insert into first is important
 

 
 Write 10 statements to add to the dependant table you created in question 1  
  
 */
 INSERT INTO student_record 
 VALUES 
 (100213420, "Aaron", "Finch", 2003, 8500.23 , 97),
(100213433, "Glenn", "Maxwell", 2042, 8200.78 , 97),
(100221450, "Shane", "Watson", 2010, 8900.23 , 97),
(100213090, "Virat", "Kohli", 2011, 7500.83 , 77),
(100213143, "Rishabh", "Pant", 2013, 9000.78 , 89),
(100221434, "Yuzi", "Chahal", 2002, 7900.23 , 85),
(100221410, "David", "Warner", 2019, 9900.23 , 95),
(100213020, "Jasprit", "Bumrah", 2001, 8500.83 , 67),
(100213123, "Steph", "Curry", 2033, 9800.78 , 92),
(100221494, "Lebron", "James", 2012, 6900.23 , 75);


INSERT INTO course_info
VALUES
(2001, "Computer Science", "2023-04-06"),
(2002, "Humanities", "2023-04-12"),
(2003, "Fitness", "2023-04-01"),
(2010, "Art and Music", "2023-04-10"),
(2011, "Biotechnology", "2023-04-07"),
(2012, "History", "2023-04-11"),
(2013, "Hospitality and Tourism", "2023-04-02"),
(2019, "Business Management", "2023-04-11"),
(2033, "Financial Services", "2023-04-12"),
(2042, "Languages and Communication", "2023-04-01");

 
 /*
 Question 3
 
 Write a SELECT statement that uses the LIKE statement and a character to find some of the records in one of your tables you created in Question 1 ( Use either the % or the _ for the rest of your wildcard)  
 
  
 */
SELECT * FROM student_record
WHERE Last_name LIKE 'c%';
 
  /*
 Question 4
 
 Write a SELECT statement that uses the BETWEEN statement to find some of the records in one of your tables using the date column you created in Question 1  
 
  
 */
 SELECT * FROM course_info
 WHERE Start_date BETWEEN "2023-04-01" AND "2023-04-05";
 
 /*
 Question 5
 
 Write a SELECT statement that uses another BETWEEN statement and sorts the data by 2 of the columns one in Ascending and one in Descending order on the tables you created in Question 1  
  
 */

SELECT * FROM student_record
 WHERE Total_fees BETWEEN 8000 AND 9000
ORDER BY Previous_grades desc, First_name asc;
 
 
 
  /*
 Question 6
 
 Write a SELECT stateme
 nt that selects a list of values (using the IN operator) from one of your tables, then use that same query and use the NOT operator to get the opposite data on the tables you created in Question 1  
  
 */
 SELECT * FROM course_info
 WHERE Course_name IN ("Art and Music", "Languages and Communication", "History");
