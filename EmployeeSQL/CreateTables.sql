-- Tables must be created in an order that is compliant with their
-- interdependencies. In other words, any table with a referential 
-- dependence, such as an FK, must be created after all of the tables
-- it references.

-- Additionally, when inserting/importing data into the tables, the 
-- same order must be maintained to avoid errors related to 
-- referential integrity, such as FK constraints, etc.

CREATE TABLE title (
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR NOT NULL
);

CREATE TABLE employee (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex CHAR(1) NULL CHECK(sex IN ('F', 'M')),
    hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES title(title_id)
);

CREATE TABLE department (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR NOT NULL
);

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);

CREATE TABLE salary (
    emp_no INT PRIMARY KEY,
    salary money NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);