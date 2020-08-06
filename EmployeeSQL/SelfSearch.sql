SELECT	e.emp_no,
		t.title,
		s.salary
FROM	employee e
JOIN	title t
ON		e.emp_title_id = t.title_id
JOIN	salary s
ON		e.emp_no = s.emp_no
WHERE   e.emp_no = 499942 /* SELF */