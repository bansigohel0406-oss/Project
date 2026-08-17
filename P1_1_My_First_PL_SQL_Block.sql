SET SERVEROUTPUT ON;

DECLARE
    roll_no NUMBER := 39;
    v_message VARCHAR2(100) := 'Welcome to PL/SQL!';
    lucky_number NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Name: Bansi Gohel');
    DBMS_OUTPUT.PUT_LINE('Roll Number: ' || roll_no);

    DBMS_OUTPUT.PUT_LINE(v_message);

    lucky_number := MOD(roll_no, 7) + 1;

    DBMS_OUTPUT.PUT_LINE('Lucky Number: ' || lucky_number);
END;
/