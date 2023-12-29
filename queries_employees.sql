--Data Analysis and Queries for Module 9 Challenge
--1.List the employee number, last name, first name, sex, and salary of each employee.

select e.emp_no, e.first_name, e.last_name, e.sex, s.salary
from Employees e
inner join salaries s
on e.emp_no = s.emp_no;

--2.List the first name, last name, and hire date for the employees who were hired in 1986.

select first_name,last_name,hire_date from Employees
where hire_date like '%1986%';

--3.List the manager of each department along with their department number, department name, employee number, last name, and first name.
select dm.dept_no, dm.emp_no, e.first_name, e.last_name
from dept_manager dm
inner join Employees e
on dm.emp_no = e.emp_no;

--4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

select e.emp_no, e.first_name, e.last_name,d.dept_no, d.dept_name
from Employees e
inner join dept_emp de
on e.emp_no = de.emp_no
inner join departments d
on de.dept_no = d.dept_no;

--5.List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select first_name, last_name, sex
from Employees
where first_name like 'Hercules' and last_name like 'B%';

--6.List each employee in the Sales department, including their employee number, last name, and first name.

select e.emp_no, e.first_name, e.last_name, d.dept_name
from Employees e
inner join dept_emp de
on e.emp_no = de.emp_no
inner join departments d
on de.dept_no = d.dept_no
where d.dept_name like 'Sales';

--7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

select e.emp_no, e.first_name, e.last_name, d.dept_name
from Employees e
inner join dept_emp de
on e.emp_no = de.emp_no
inner join departments d
on de.dept_no = d.dept_no
where d.dept_name like 'Sales' or d.dept_name like 'Development';

--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(last_name) 
from Employees
group by last_name
order by count(last_name) desc;