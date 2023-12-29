# sql-challenge
employee-database

#  Employee Database

## Background

It’s been two weeks since we were hired as a new data engineer at Pewlett Hackard (a fictional company). Our first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, we design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data.
 That is, 
### Data modelling,
### Data engineering,
### Data analysis, 
respectively...


#### Data Modeling

Inspected the CSV files and sketched out an ERD of the tables. 
Used a tool like [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).

![image](https://github.com/svuth23/sql-challenge/assets/136966712/c2f93f0c-5dbb-440f-b267-6acd2c1e6cb4)



#### Data Engineering

* Used the information I had to create a table schema for each of the six CSV files. Specified data types, primary keys, foreign keys, and other constraints.
* Imported each CSV file into the corresponding SQL table. 

#### Data Analysis

Once the database was created ,performed the tasks below:

1.List the employee number, last name, first name, sex, and salary of each employee.

2.List the first name, last name, and hire date for the employees who were hired in 1986.

3.List the manager of each department along with their department number, department name, employee number, last name, and first name.

4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5.List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6.List each employee in the Sales department, including their employee number, last name, and first name.

7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).




