CREATE TABLE Titles (
    "title_id" VARCHAR(10)   NOT NULL,
    "title" VARCHAR(20)   NOT NULL,
	PRIMARY KEY (title_id)
);

CREATE TABLE Departments (
    "dept_no" VARCHAR(10)   NOT NULL,
    "dept_name" VARCHAR(300)   NOT NULL,
	CONSTRAINT pk_departments PRIMARY KEY (dept_no)
);

CREATE TABLE Employees (
    "emp_no" INT PRIMARY KEY NOT NULL,
    "emp_title" VARCHAR(10)   NOT NULL,
    "birth_date" VARCHAR(10)   NOT NULL,
    "first_name" VARCHAR(20)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" VARCHAR(10)   NOT NULL,
	FOREIGN KEY (emp_title) REFERENCES Titles(title_id)
);

CREATE TABLE Salaries (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);


CREATE TABLE Dept_Emp (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR(10)   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE Dept_Manager (
    "dept_no" VARCHAR(10)   NOT NULL,
    "emp_no" INT   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

select * from Employees;
select * from  Dept_Emp;
select * from Dept_Manager;
SELECT * FROM Salaries;
select *FROM  Departments;
select * from Titles;
