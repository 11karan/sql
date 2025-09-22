set SERVEROUTPUT on;

DECLARE
    v_emp_id    NUMBER := 1;
    v_bonus     NUMBER := 5000;
    v_new_salary number ; 
BEGIN
    UPDATE_SALARY(v_emp_id , v_bonus, v_new_salary);

    DBMS_OUTPUT.PUT_LINE('updated salary : '|| v_new_salary);
    DBMS_OUTPUT.PUT_LINE('modified bonus (after 25% increase) ' || v_bonus);
END;
