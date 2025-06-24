BEGIN
    FOR REC IN (
        SELECT
            L.LOANID
        FROM
                 LOANS L
            JOIN CUSTOMERS C ON L.CUSTOMERID = C.CUSTOMERID
        WHERE
            C.AGE > 60
    ) LOOP
        UPDATE LOANS
        SET
            INTERESTRATE = INTERESTRATE - 1
        WHERE
            LOANID = REC.LOANID;

    END LOOP;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('1% discount applied to eligible loans.');
END;

select * from LOANS;