CREATE OR REPLACE PROCEDURE UPDATEEMPLOYEEBONUS (
    P_DEPARTMENT IN VARCHAR2,
    P_BONUS_PCT  IN NUMBER
) IS
BEGIN
    UPDATE EMPLOYEES
    SET
        SALARY = SALARY + ( SALARY * P_BONUS_PCT / 100 )
    WHERE
        DEPARTMENT = P_DEPARTMENT;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Bonus applied to '
                         || P_DEPARTMENT
                         || ' department employees.');
END;

EXEC UpdateEmployeeBonus('IT', 10);

select * from EMPLOYEES;

