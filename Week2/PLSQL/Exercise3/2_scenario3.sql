CREATE OR REPLACE PROCEDURE TRANSFERFUNDS (
    P_FROM_ACCOUNT IN NUMBER,
    P_TO_ACCOUNT   IN NUMBER,
    P_AMOUNT       IN NUMBER
) IS
    V_BALANCE NUMBER;
BEGIN
    SELECT
        BALANCE
    INTO V_BALANCE
    FROM
        ACCOUNTS
    WHERE
        ACCOUNTID = P_FROM_ACCOUNT
    FOR UPDATE;

    IF V_BALANCE < P_AMOUNT THEN
        DBMS_OUTPUT.PUT_LINE('Insufficient funds in source account.');
    ELSE
        UPDATE ACCOUNTS
        SET
            BALANCE = BALANCE - P_AMOUNT
        WHERE
            ACCOUNTID = P_FROM_ACCOUNT;

        UPDATE ACCOUNTS
        SET
            BALANCE = BALANCE + P_AMOUNT
        WHERE
            ACCOUNTID = P_TO_ACCOUNT;

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Transfer of '
                             || P_AMOUNT
                             || ' completed from account '
                             || P_FROM_ACCOUNT
                             || ' to account '
                             || P_TO_ACCOUNT
                             || '.');

    END IF;

END;
/

EXEC TransferFunds(1, 2, 5000);
select * from ACCOUNTS;