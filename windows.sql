
-- in aggregate function the output of multiple rows is given in an single row but here in window function each row is shown with calculated data(windows of row)
-- over() clause is use to perform  over set of rows
-- partition by is an keyword use inside over... It is used to divide or seperate the similar values like similar values() diff btw groupby and this is that it does not colapse the datawhether the groupby does...alter
-- order by is used in over () used to specify over the rows ;;; ques it is maximunly used in running avg or running sum. 
-- in running sum there is use of partition by
create database tushar;
use tushar;
CREATE TABLE EmployeeSales (
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    Department VARCHAR(50),
    SaleDate DATE,
    SaleAmount DECIMAL(10, 2)
);


INSERT INTO EmployeeSales (EmployeeID, EmployeeName, Department, SaleDate, SaleAmount) VALUES
(1, 'Alice', 'Sales', '2025-06-01', 1200.00),
(1, 'Alice', 'Sales', '2025-06-03', 1800.00),
(1, 'Alice', 'Sales', '2025-06-07', 1500.00),
(2, 'Bob', 'Sales', '2025-06-01', 2000.00),
(2, 'Bob', 'Sales', '2025-06-05', 2200.00),
(2, 'Bob', 'Sales', '2025-06-08', 2100.00),
(3, 'Carol', 'Marketing', '2025-06-02', 3000.00),
(3, 'Carol', 'Marketing', '2025-06-06', 2800.00),
(3, 'Carol', 'Marketing', '2025-06-10', 2700.00),
(4, 'Dave', 'Marketing', '2025-06-01', 1000.00),
(4, 'Dave', 'Marketing', '2025-06-03', 1100.00),
(4, 'Dave', 'Marketing', '2025-06-09', 1300.00),
(5, 'Eve', 'HR', '2025-06-04', 900.00),
(5, 'Eve', 'HR', '2025-06-07', 950.00),
(5, 'Eve', 'HR', '2025-06-10', 1000.00),
(6, 'Frank', 'Sales', '2025-06-02', 1700.00),
(6, 'Frank', 'Sales', '2025-06-05', 1900.00),
(6, 'Frank', 'Sales', '2025-06-09', 1600.00),
(7, 'Grace', 'Finance', '2025-06-01', 2500.00),
(7, 'Grace', 'Finance', '2025-06-06', 2400.00),
(7, 'Grace', 'Finance', '2025-06-10', 2600.00),
(8, 'Hank', 'Finance', '2025-06-03', 2300.00),
(8, 'Hank', 'Finance', '2025-06-04', 2200.00),
(8, 'Hank', 'Finance', '2025-06-08', 2100.00),
(9, 'Ivy', 'HR', '2025-06-02', 800.00),
(9, 'Ivy', 'HR', '2025-06-06', 850.00),
(9, 'Ivy', 'HR', '2025-06-09', 950.00),
(10, 'Jake', 'IT', '2025-06-05', 3000.00),
(10, 'Jake', 'IT', '2025-06-07', 3200.00),
(10, 'Jake', 'IT', '2025-06-10', 3100.00);


-- ORDER BY
select * from employeeSales;
select *,
avg(saleamount) over(),
min(saleamount) over(),
max(saleamount) over() from employeesales;


-- PARTITON BY
select *,
avg(saleamount) over(),
avg(saleamount) over( partition by department) from employeesales;

select *,
avg(saleamount) over(),
avg(saleamount) over( partition by SALEDATE) from employeesales;

select *,
avg(saleamount) over(),
avg(saleamount) over( partition by department , employeename) from employeesales;

select *,
avg(saleamount) over(),
avg(saleamount) over( partition by department , saledate) from employeesales;

-- order by 

select *, 
avg(saleamount) over(order by saleamount) from employeesales;

select *, 
avg(saleamount) over(order by department) from employeesales;

-- partition  + order by

select *, 
avg(saleamount) over(partition by department order by saleamount) from employeesales;

select *, 
avg(saleamount) over(partition by saledate order by saleamount) from employeesales;

use sakila;

select * from payment;

select *, sum(amount) over(partition by customer_id) from payment;

select *, sum(amount) over(partition by payment_date) from payment;

select *, sum(amount) over(partition by customer_id order by amount desc) from payment;