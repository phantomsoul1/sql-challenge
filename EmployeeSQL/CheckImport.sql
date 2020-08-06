-- Check scripts to ensure data has been loaded:
--     a: Check total count
--	   b: Check first row, as sorted by PK
--     c: Check last row, as sorted by PK
--     d: Check a random row
-- If all 4 conditions pass, there is very little chance something didn't import correctly.

-- 1. Titles
SELECT COUNT(*) FROM title;
SELECT * FROM title ORDER BY title_id ASC LIMIT 1;
SELECT * FROM title ORDER BY title_id DESC LIMIT 1;
SELECT * FROM title ORDER BY random() LIMIT 1;

-- 2. Employees
SELECT COUNT(*) FROM employee;
SELECT * FROM employee ORDER BY emp_no ASC LIMIT 1;
SELECT * FROM employee ORDER BY emp_no DESC LIMIT 1;
SELECT * FROM employee ORDER BY random() LIMIT 1;

-- 3. Departments
SELECT COUNT(*) FROM department;
SELECT * FROM department ORDER BY dept_no ASC LIMIT 1;
SELECT * FROM department ORDER BY dept_no DESC LIMIT 1;
SELECT * FROM department ORDER BY random() LIMIT 1;

-- 4. Department Employees
SELECT COUNT(*) FROM dept_emp;
SELECT * FROM dept_emp ORDER BY emp_no ASC, dept_no ASC LIMIT 1;
SELECT * FROM dept_emp ORDER BY emp_no DESC, dept_no DESC LIMIT 1;
SELECT * FROM dept_emp ORDER BY random() LIMIT 1;

-- 5. Department Managers
SELECT COUNT(*) FROM dept_manager;
SELECT * FROM dept_manager ORDER BY dept_no ASC, emp_no ASC LIMIT 1;
SELECT * FROM dept_manager ORDER BY dept_no DESC, emp_no DESC LIMIT 1;
SELECT * FROM dept_manager ORDER BY random() LIMIT 1;

-- 6. Salaries
SELECT COUNT(*) FROM salary;
SELECT * FROM salary ORDER BY emp_no ASC LIMIT 1;
SELECT * FROM salary ORDER BY emp_no DESC LIMIT 1;
SELECT * FROM salary ORDER BY random() LIMIT 1;