SET SERVEROUTPUT ON;

DECLARE
    c_gst_rate CONSTANT NUMBER := 18;

    base_price NUMBER := 39 * 500 + 1000;
    v_cgst NUMBER;
    v_sgst NUMBER;
    v_total NUMBER;

    v_city VARCHAR2(50) := 'Porbandar';
BEGIN
    -- GST Calculation
    v_cgst := base_price * 9 / 100;
    v_sgst := base_price * 9 / 100;
    v_total := base_price + v_cgst + v_sgst;

    DBMS_OUTPUT.PUT_LINE('Base Price: ' || base_price);
    DBMS_OUTPUT.PUT_LINE('CGST: ' || v_cgst);
    DBMS_OUTPUT.PUT_LINE('SGST: ' || v_sgst);
    DBMS_OUTPUT.PUT_LINE('Total: ' || v_total);

    -- NVL
    DBMS_OUTPUT.PUT_LINE('NVL Result: ' || NVL(v_city, 'Ahmedabad'));

    -- NVL2
    DBMS_OUTPUT.PUT_LINE(
        NVL2(v_city,
             'City Known: ' || v_city,
             'City Unknown')
    );
END;
/