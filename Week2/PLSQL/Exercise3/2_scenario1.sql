CREATE OR REPLACE PROCEDURE PROCESSMONTHLYINTEREST IS
BEGIN
    FOR REC IN (
        SELECT
            ACCOUNTID,
            BALANCE
        FROM
            ACCOUNTS
        WHERE
            ACCOUNTTYPE = 'SAVINGS'
    ) LOOP
        UPDATE ACCOUNTS
        SET
            BALANCE = BALANCE + ( BALANCE * 0.01 )
        WHERE
            ACCOUNTID = REC.ACCOUNTID;

    END LOOP;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Monthly interest processed for all savings accounts.');
END;

select * from ACCOUNTS;
