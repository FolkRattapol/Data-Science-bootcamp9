-- CREATE TABLE
CREATE TABLE employee (
  id INT UNIQUE,
  name TEXT,
  department TEXT,
  position TEXT,
  salary REAL
  );

-- INSERT DATA
INSERT INTO employee VALUES
	(1, 'David', 'Marketing', 'CEO', 100000),
    (2, 'John', 'Marketing',  'VP', 85000),
    (3, 'Marry', 'Sales', 'Manager', 60000);

-- SELECT DATA
SELECT ID, NAME, SALARY FROM employee LIMIT 2;

-- TRANSFORM COLUMN
SELECT
	name,
    salary,
    salary*1.15 as new_salary,
    LOWER(name) || '@company.com' as company_email
from employee;

-- FILTER DATA
SELECT * FROM employee
WHERE department = 'Marketing' AND salary > 90000;

SELECT * from employee
where department = 'Marketing' or department = 'IT';

SELECT * from employee
where department IN ('Marketing', 'IT');
--Note : IN Operator = OR

-- DELETE DATA
DELETE FROM employee
WHERE id in (1,2);

-- ALTER TABLE (การเปลี่ยนแปลง table)
select * from employee;
ALTER table employee RENAME to MyEmployee;

alter table MyEmployee
add email TEXT;

UPDATE MyEmployee
SET email = 'CEO@company.com'
where id = 1;

select * from MyEmployee;

-- COPY AND  DROP TABLE
CREATE TABLE MyEmployee_Backup AS
	SELECT * from MyEmployee;
    
DROP table MyEmployee_Backup;
