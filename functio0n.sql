CREATE or replace Function update_salary1 (
    p_emp_id  in  employees478.emp_id%type,
    p_bonus  in OUT NUMBER,
    p_new_salary out NUMBER
)
return VARCHAR2
AS
    v_emp_name employees478.EMP_NAME%TYPE;
BEGIN

    select emp_name , salary+p_bonus into v_emp_name , p_new_salary
    from EMPLOYEES478
    where EMP_ID = p_emp_id;


    p_bonus := p_bonus*1.2;

    RETURN v_emp_name;
END;