/* NAME: AARSH PARIMAL PATEL
Assignment-4
Semester-2
*/

/* Using the sample database */
 USE SAMPLE;

/*
 Question 1
 
 Write an UPDATE statement to change all of the LASTNAMEs in the EMPLOYEE table to SMITH 
 
*/

# Put your answer here


/* Updating the employee table and changing the lastnames to SMITH*/
UPDATE EMPLOYEE
SET LASTNAME = 'SMITH';

/*
 Question 2
 
 Write an UPDATE statement to change all of the MAJPROJ records in the PROJECT to AD9999 Where they don't
 have a value( 5 marks )
 */

/* Updating the PROJECT table and adding AD9999 where the value is null*/
UPDATE PROJECT
SET MAJPROJ = 'AD9999'
WHERE MAJPROJ = '';
SELECT * FROM PROJECT;


/*
 Question 3
 
 Write a single UPDATE statement to change the QUANTITY to 200 and the LOCATION to Barrie WHERE the PID has a 1 in the 7th position
 
*/


/* Updating the inventory table which has all the given columns with the given values */
UPDATE INVENTORY

/* Setting the quantity to 200 and location to BARRIE */
SET QUANTITY = 200, LOCATION = 'Barrie'

/* Below statement is to select out the number on the 7th position */
WHERE PID LIKE '______1%';

SELECT * FROM INVENTORY; /* to display the table */

/*
 Question 4
 
 Write an UPDATE statement to change the SALARY to be increased by 10% WHERE EMPLOYEE IS older than 40 years old
 
*/

/* Updating the Employee table where the salary of older than 40 years will get an increase of 10% in their salary.*/
UPDATE EMPLOYEE

/* the below query is to increase the salary by 10% */
SET SALARY = SALARY + SALARY * 0.1


/* Here I have used the Floor function, Date difference and current date to determine and select out the age*/
WHERE FLOOR(DATEDIFF(curdate(),BIRTHDATE) / 365.25) > 40;

/*
 Question 5
 
 Write a DELETE statement to remove employee 000030 from the EMPLOYEE table 
   
 */
 
/* Deleting the employee 000030 from the table*/
DELETE FROM EMPLOYEE
WHERE EMPNO = '000030';

SELECT * FROM EMPLOYEE; /* to display the table */
/*
 Question 6
 
 Write a DELETE statement to remove records where the total of their SALARY and COMM column together is less than $40000 and they have worked for the company for less than 8 years from the STAFF table 


 */

/* Adding a delete statement yo remove the records where the total of  SALARY and COMM column together is less than $40000 and have worked for the company for less than 8 years*/
DELETE FROM STAFF

WHERE SALARY + COMM < 40000 AND YEARS < 8;

SELECT * FROM STAFF; /* to display the table */
 

/*
 Question 7
 
  Write a DELETE statement to remove records WHERE the REGION has South in the name and the SALES DATE is in APRIL in the SALES table  
  
 */
 
/* Adding a delete statement*/
DELETE FROM SALES

/* Below query is to select out the word SOUTH and the APRIL month*/
WHERE REGION LIKE '%South%' AND MONTH(SALES_DATE) = 04;

SELECT * FROM SALES; /* to display the table */

/* End of the assignment*/
