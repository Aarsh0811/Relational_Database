/*NAME: AARSH PARIMAL PATEL
Assignment-3
Semester-2
/*
 Question 1
 
 Write a statement to SELECT all of the columns in the DEPARTMENT table  
 
*/

# Put your answer here
SELECT * FROM DEPARTMENT;



/*
 Question 2
 
  Write a statement to SELECT all of the columns in the EMPLOYEE table but only return 5 rows  
 
*/

SELECT * FROM EMPLOYEE
LIMIT 5;

/*
 Question 3
 
  Write a statement to SELECT all of the columns from the PROJECT table where there is more than 3 PRSTAFF  
 
*/

SELECT * FROM PROJECT 
WHERE PRSTAFF > 3;

/*
 Question 4
 
 Write a statement to SELECT PROJNO and RESPEMP AND the date fields from the PROJECT table where the project was still running on July 1 2002 
 
*/
SELECT PROJNO, RESPEMP FROM PROJECT
WHERE PRSTDATE = "2002-07-01";

/*
 Question 5
 
  Write a statement to SELECT PROJNO, PROJNAME AND DEPTNO from the PROJECT table where PROJNAME has the word PROGRAMMING in it  
 
   
 */
 SELECT PROJNO, PROJNAME, DEPTNO FROM PROJECT
 WHERE PROJNAME = "PROGRAMMING";
/*
 Question 6
 
  Write a statement to SELECT from the PROJECT table where MAJPROJ starts with AD and has 4 wildcard place holders 
  
 */
 SELECT * FROM PROJECT 
 WHERE MAJPROJ LIKE "AD%" && MAJPROJ LIKE "____";

/*
 Question 7
 
 Write a statement to SELECT from the EMPLOYEE table where that returns all the records where the JOB name is 5 characters long (make sure to remove any spaces) 
  
 */
 
 SELECT * FROM EMPLOYEE
 WHERE length(trim(JOB)) > 5;
 /*
 Question 8
 
 Write a statement to SELECT the EMPNO and put the  FIRSTNME AND the LASTNAME column  together with a space in between and call it FULLNAME from the EMPLOYEE table as columns  
 
  
 */
 SELECT EMPNO, FIRSTNME +" "+ LASTNAME AS "FULLNAME" FROM EMPLOYEE;
 /*
 Question 9
 
 Write a statement to SELECT the EMPNO and the first 4 characters of the FIRSTNME AND the starting at the 2nd character to the end of the LASTNAME column from  the EMPLOYEE table as columns 
 
  
 */
 
 
  SELECT EMPNO, substring(FIRSTNME,0,4), substring(LASTNAME,1) FROM EMPLOYEE;
 
  /*
 Question 10

 Write a statement to SELECT the EMPNO and the YEAR out of the HIRE DATE and the MONTH of out of the birthdate from the EMPLOYEE table as columns  
  
 */
 
  SELECT EMPNO, YEAR(HIREDATE), MONTH(BIRTHDATE) FROM EMPLOYEE; 
 
