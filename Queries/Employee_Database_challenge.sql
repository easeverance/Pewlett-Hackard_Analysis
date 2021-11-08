--Joining retirement_info and dept_emp tables
SELECT employees.emp_no,
	employees.first_name,
	employees.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
INTO retirement_titles
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

SELECT * FROM retirement_titles


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (retirement_titles.emp_no) retirement_titles.emp_no,
retirement_titles.first_name,
retirement_titles.last_name,
retirement_titles.title

INTO Unique_Titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;

--Count of employees about to retire by job title
SELECT Count (unique_titles.emp_no),unique_titles.title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT * FROM retiring_titles
-- Total count of employees to retire
SELECT Count (first_name)
FROM unique_titles;

-- Mentorship Eligibility
SELECT DISTINCT ON (employees.emp_no) employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.birth_date,
	dept_emp.from_date,
	dept_emp.to_date,
	titles.title
-- INTO mentorship_eligibility
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (dept_emp.to_date = '9999-01-01')
AND (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no ASC;

SELECT * FROM mentorship_eligibility

--  Ceate a new table of actually current employees who will soon be eligible for retirement
-- SELECT * FROM current_emp
SELECT current_emp.emp_no,
	current_emp.first_name,
	current_emp.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
INTO current_retirement_titles
FROM current_emp
INNER JOIN titles
ON current_emp.emp_no = titles.emp_no
ORDER BY emp_no ASC;

SELECT * FROM current_retirement_titles

SELECT DISTINCT ON (current_retirement_titles.emp_no) current_retirement_titles.emp_no,
current_retirement_titles.first_name,
current_retirement_titles.last_name,
current_retirement_titles.title,
current_retirement_titles.to_date

INTO Current_Unique_Titles
FROM current_retirement_titles
ORDER BY emp_no ASC, to_date DESC;

SELECT * FROM Current_Unique_Titles

--Count of current employees about to retire by job title
SELECT Count (Current_Unique_Titles.emp_no),Current_Unique_Titles.title
INTO current_retiring_titles
FROM Current_Unique_Titles
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT Count (first_name) 
FROM Current_Unique_Titles

-- To breakdown mentorship by department
SELECT DISTINCT ON (employees.emp_no) employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.birth_date,
	dept_emp.from_date,
	dept_emp.to_date,
	dept_emp.dept_no,
	titles.title
INTO mentorship_eligibility_by_department
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (dept_emp.to_date = '9999-01-01')
AND (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no ASC;

SELECT * FROM mentorship_eligibility_by_department

-- Join mentor elibility by department with department name
SELECT mentorship_eligibility_by_department.emp_no,
	mentorship_eligibility_by_department.first_name,
	mentorship_eligibility_by_department.last_name,
	mentorship_eligibility_by_department.title,
	mentorship_eligibility_by_department.from_date,
	mentorship_eligibility_by_department.to_date,
	mentorship_eligibility_by_department.dept_no,
	departments.dept_name
INTO ME_Eligible_Dept_Name
FROM mentorship_eligibility_by_department
INNER JOIN departments
ON mentorship_eligibility_by_department.dept_no  = departments.dept_no
ORDER BY emp_no ASC;

SELECT * FROM ME_Eligible_Dept_Name

SELECT Count (ME_Eligible_Dept_Name.dept_name),ME_Eligible_Dept_Name.dept_name
INTO mentorship_eligibility_by_department_count
FROM ME_Eligible_Dept_Name
GROUP BY dept_name
ORDER BY COUNT(dept_name) DESC;

SELECT * FROM mentorship_eligibility_by_department_count

SELECT * FROM current_emp_by_dept