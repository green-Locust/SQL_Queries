SHOW DATABASES;
CREATE DATABASE HR;
USE HR;

-- creating my first table --

CREATE TABLE my_first_table2 
(
hr_id int not null,
first_name varchar (50) not null,
surname varchar (50) not null,
previous_names varchar (50),
dob date not null,
start_date date,
job_title varchar (80),
primary key (hr_id)
);


EXPLAIN my_first_table2;

-- add records to my table --

INSERT INTO my_first_table2 (hr_id, first_name, surname, previous_names, dob, start_date, job_title)
VALUES 
(001, 'Adam', 'Bourne', null, '1994-01-01', '2021-11-05', 'Sales Consultant'),
(004, 'Catelyn', 'Dugg', 'McBride', '1987-04-01', '2021-02-08', 'Sales Manager'),
(026, 'Evan', 'Finn', null, '1994-01-08', '2021-10-05', 'Sales Consultant'),
(057, 'Gary', 'Heath', 'Gareth', '2003-01-01', '2021-02-05', 'Apprentice'),
(123, 'John', 'Smith', null, '1990-05-15', '2021-03-20', 'Accountant'),
(234, 'Jane', 'Doe', null, '1985-09-10', '2021-01-15', 'Marketing Coordinator'),
(345, 'Michael', 'Brown', null, '1982-11-25', '2021-04-30', 'IT Specialist'),
(456, 'Emily', 'Taylor', null, '1998-07-02', '2021-09-10', 'HR Manager'),
(567, 'David', 'Clark', 'Dave', '1995-03-18', '2021-06-12', 'Operations Analyst'),
(678, 'Emma', 'White', null, '1993-08-12', '2021-07-15', 'Customer Service Representative'),
(789, 'Oliver', 'Anderson', 'Ollie', '1996-02-20', '2021-08-28', 'Software Developer'),
(890, 'Sophia', 'Martinez', null, '1989-11-30', '2021-05-10', 'Project Manager'),
(901, 'William', 'Harris', 'Will', '1991-06-25', '2021-11-18', 'Financial Analyst'),
(112, 'Elizabeth', 'Johnson', 'Liz', '1984-04-07', '2021-03-05', 'Marketing Specialist'),
(223, 'James', 'Wilson', 'Jim', '1987-10-15', '2021-02-20', 'Sales Representative'),
(334, 'Ava', 'Jackson', null, '1999-09-05', '2021-09-30', 'Customer Support Specialist'),
(445, 'Mason', 'Perez', null, '1997-07-10', '2021-10-25', 'Operations Manager'),
(556, 'Harper', 'Roberts', null, '1992-12-18', '2021-06-15', 'IT Consultant'),
(667, 'Evelyn', 'Lewis', 'Evie', '1994-05-30', '2021-04-10', 'HR Coordinator'),
(778, 'Jackson', 'Garcia', 'Jack', '1988-03-22', '2021-01-08', 'Business Analyst'),
(889, 'Logan', 'Smith', null, '1990-08-05', '2021-12-01', 'Product Manager'),
(900, 'Avery', 'Turner', null, '1996-11-15', '2021-07-20', 'Customer Success Manager'),
(011, 'Mia', 'Flores', null, '1993-01-28', '2021-08-05', 'Sales Coordinator'),
(122, 'Ethan', 'Lee', null, '1998-06-10', '2021-09-20', 'Technical Support Engineer')
;

-- using logical operator AND --
SELECT *
FROM my_first_table2
WHERE first_name LIKE 'J%' AND job_title LIKE '%Sales%';

-- using logical operator OR --
SELECT *
FROM my_first_table2
WHERE job_title = 'Sales Coordinator' OR job_title = 'Sales Manager';

-- using logical operator NOT --
SELECT *
FROM my_first_table2
WHERE NOT previous_names = 'null';


SELECT *
FROM my_first_table2;
