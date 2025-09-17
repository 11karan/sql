use tushar;
drop table employees;
CREATE TABLE employees (
    id int,
    first_name varchar(20),
    last_name varchar(20),
    department varchar(50),
    salary int,
    hire_date date
);
insert into  employees (id,first_name, last_name, department, salary, hire_date) values
(1,'John', 'Doe', 'IT', 75000, '2022-03-15'),
(2,'Jane', 'Smith', 'HR', 65000, '2021-08-22'),
(3,'Mike', 'Johnson', 'Finance', 82000.00, '2020-05-10'),
(4,'Sarah', 'Williams', 'Marketing', 58000.00, '2023-01-30'),
(5,'David', 'Brown', 'IT', 70000.00, '2022-11-05'),
(6,'Emily', 'Davis', 'Sales', 60000.00, '2021-04-18'),
(7,'Robert', 'Wilson', 'Finance', 90000.00, '2019-07-12');
select * from employees;
alter table employees add primary key (id), add unique key(first_name);
-- for unique index column must have unique keyword/primary keyword  in it.
create unique index uni_1 on employees(first_name);
show index  from employees where key_name = 'uni_1'; -- unique index (can be checked is non_unique = 0)
drop index uni_1 on employees;
-- ques 2,,,,,     
show index from employees;

-- ques 3
alter table employees alter index first_name invisible;
show index from employees;