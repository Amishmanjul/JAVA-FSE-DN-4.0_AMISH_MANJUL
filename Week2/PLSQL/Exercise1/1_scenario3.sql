BEGIN
    FOR REC IN (
        SELECT
            L.LOANID,
            C.NAME,
            L.DUEDATE
        FROM
                 LOANS L
            JOIN CUSTOMERS C ON L.CUSTOMERID = C.CUSTOMERID
        WHERE
            L.DUEDATE BETWEEN SYSDATE AND ( SYSDATE + 30 )
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Reminder: Dear '
                             || REC.NAME
                             || ', your loan (ID: '
                             || REC.LOANID
                             || ') is due on '
                             || TO_CHAR(REC.DUEDATE, 'DD-MON-YYYY')
                             || '.');
    END LOOP;
END;
/