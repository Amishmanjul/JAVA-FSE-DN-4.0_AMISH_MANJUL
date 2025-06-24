CREATE TABLE CUSTOMERS (
    CUSTOMERID NUMBER PRIMARY KEY,
    NAME       VARCHAR2(50),
    AGE        NUMBER,
    BALANCE    NUMBER(10, 2),
    ISVIP      VARCHAR2(5) DEFAULT 'FALSE'
);

CREATE TABLE LOANS (
    LOANID       NUMBER PRIMARY KEY,
    CUSTOMERID   NUMBER,
    INTERESTRATE NUMBER(5, 2),
    DUEDATE      DATE,
    FOREIGN KEY ( CUSTOMERID )
        REFERENCES CUSTOMERS ( CUSTOMERID )
);
                                  
INSERT INTO CUSTOMERS (CustomerID, Name, Age, Balance) VALUES (1, 'Ravi Kumar', 65, 12000);
INSERT INTO CUSTOMERS (CustomerID, Name, Age, Balance) VALUES (2, 'Anita Sharma', 45, 8000);
INSERT INTO CUSTOMERS (CustomerID, Name, Age, Balance) VALUES (3, 'Rajesh Verma', 70, 15000);
INSERT INTO CUSTOMERS (CustomerID, Name, Age, Balance) VALUES (4, 'Pooja Singh', 30, 5000);
INSERT INTO CUSTOMERS (CustomerID, Name, Age, Balance) VALUES (5, 'Amit Patel', 62, 18000);
INSERT INTO CUSTOMERS (CustomerID, Name, Age, Balance) VALUES (6, 'Suman Das', 28, 9500);
INSERT INTO CUSTOMERS (CustomerID, Name, Age, Balance) VALUES (7, 'Neha Joshi', 35, 11000);
INSERT INTO CUSTOMERS (CustomerID, Name, Age, Balance) VALUES (8, 'Vikram Mehta', 40, 4000);
INSERT INTO CUSTOMERS (CustomerID, Name, Age, Balance) VALUES (9, 'Sunita Reddy', 68, 10500);
INSERT INTO CUSTOMERS (CustomerID, Name, Age, Balance) VALUES (10, 'Arjun Nair', 55, 25000);

INSERT INTO LOANS (LoanID, CustomerID, InterestRate, DueDate) VALUES (101, 1, 7.50, SYSDATE + 10);
INSERT INTO LOANS (LoanID, CustomerID, InterestRate, DueDate) VALUES (102, 2, 8.00, SYSDATE + 40);
INSERT INTO LOANS (LoanID, CustomerID, InterestRate, DueDate) VALUES (103, 3, 7.00, SYSDATE + 5);
INSERT INTO LOANS (LoanID, CustomerID, InterestRate, DueDate) VALUES (104, 4, 9.00, SYSDATE + 20);
INSERT INTO LOANS (LoanID, CustomerID, InterestRate, DueDate) VALUES (105, 5, 7.25, SYSDATE + 15);
INSERT INTO LOANS (LoanID, CustomerID, InterestRate, DueDate) VALUES (106, 6, 8.75, SYSDATE + 50);
INSERT INTO LOANS (LoanID, CustomerID, InterestRate, DueDate) VALUES (107, 7, 8.00, SYSDATE + 25);
INSERT INTO LOANS (LoanID, CustomerID, InterestRate, DueDate) VALUES (108, 8, 9.50, SYSDATE + 8);
INSERT INTO LOANS (LoanID, CustomerID, InterestRate, DueDate) VALUES (109, 9, 7.80, SYSDATE + 3);
INSERT INTO LOANS (LoanID, CustomerID, InterestRate, DueDate) VALUES (110, 10, 6.50, SYSDATE + 60);


select * from LOANS;

