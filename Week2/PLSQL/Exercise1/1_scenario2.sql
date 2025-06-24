BEGIN
    FOR REC IN (
        SELECT
            CUSTOMERID
        FROM
            CUSTOMERS
        WHERE
            BALANCE > 10000
    ) LOOP
        UPDATE CUSTOMERS
        SET
            ISVIP = 'TRUE'
        WHERE
            CUSTOMERID = REC.CUSTOMERID;

    END LOOP;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('VIP status updated for eligible customers.');
END;

select * from CUSTOMERS;