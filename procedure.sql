
create table employees478 (
    emp_id number primary key,
    emp_name VARCHAR2(50),
    salary number
);

INSERT into employees478 values (1, 'Arun' , 50000);
INSERT into employees478 values (2, 'meena' , 50000);
commit;
select * from employees478;

CREATE or replace PROCEDURE update_salary (
    p_emp_id  in  employees478.emp_id%type,
    p_bonus  in OUT NUMBER,
    p_new_salary out NUMBER
)
return VARCHAR2
IS
BEGIN
    UPDATE employees478
    set salary = salary + p_bonus 
    WHERE p_emp_id = p_emp_id 
    RETURNING salary into p_new_salary;


    p_bonus := p_bonus * 2.5;
end;