CREATE table REP (
    Rep_ID char (2) Primary Key,
    First_Name varchar(20),
    Last_Name varchar(20),
    Address varchar(20),
    CITY varchar(15),
    STATE char(2),
    Postal char(5),
    Cell_Phone char(12),
    COMMISSION decimal (7,2),
    Rate decimal(3,2)

);
--!Task 2
INSERT Into REP (REP_ID, FIRST_NAME, LAST_NAME, ADDRESS, CITY, STATE, POSTAL, CELL_PHONE, COMMISSION, RATE)
VALUES
('35', 'Fred', 'Kiser', '427 Billings Dr.', 'Cody', 'WY','82414', '307-555-6309', 0.00, 0.05);