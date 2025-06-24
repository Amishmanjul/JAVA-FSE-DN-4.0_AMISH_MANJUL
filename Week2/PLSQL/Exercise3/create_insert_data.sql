-- ACCOUNTS table (for savings + transfer scenarios)
CREATE TABLE ACCOUNTS (
    ACCOUNTID   NUMBER PRIMARY KEY,
    CUSTOMERID  NUMBER,
    BALANCE     NUMBER(12, 2),
    ACCOUNTTYPE VARCHAR2(20) -- e.g., 'SAVINGS', 'CURRENT'
);

                -- EMPLOYEES table (for bonus scenario)
CREATE TABLE EMPLOYEES (
    EMPLOYEEID NUMBER PRIMARY KEY,
    NAME       VARCHAR2(50),
    DEPARTMENT VARCHAR2(50),
    SALARY     NUMBER(10, 2)
);

                                -- Sample accounts
INSERT INTO ACCOUNTS VALUES ( 1,
                              1,
                              50000,
                              'SAVINGS' );

INSERT INTO ACCOUNTS VALUES ( 2,
                              1,
                              30000,
                              'CURRENT' );

INSERT INTO ACCOUNTS VALUES ( 3,
                              2,
                              75000,
                              'SAVINGS' );

INSERT INTO ACCOUNTS VALUES ( 4,
                              3,
                              25000,
                              'SAVINGS' );

                                -- Sample employees
INSERT INTO EMPLOYEES VALUES ( 101,
                               'Ravi Kumar',
                               'IT',
                               60000 );

INSERT INTO EMPLOYEES VALUES ( 102,
                               'Anita Sharma',
                               'HR',
                               50000 );

INSERT INTO EMPLOYEES VALUES ( 103,
                               'Rajesh Verma',
                               'IT',
                               70000 );

INSERT INTO EMPLOYEES VALUES ( 104,
                               'Pooja Singh',
                               'Sales',
                               45000 );

COMMIT;

select * from EMPLOYEES;
