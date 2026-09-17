CREATE table REP (
    REP_ID char(2) PRIMARY KEY,
    FIRST_NAME varchar(20),
    LAST_NAME varchar(20),
    ADDRESS varchar(20),
    CITY varchar(15),
    STATE char(2),
    POSTAL char(5),
    CELL_PHONE char(12),
    COMMISSION decimal(7,2),
    RATE decimal(3,2)
);

INSERT INTO REP (REP_ID, FIRST_NAME, LAST_NAME, ADDRESS, CITY, STATE, POSTAL, CELL_PHONE, COMMISSION, RATE)
VALUES
('35','Fred', 'Kiser', '427 Billings Dr.', 'Cody', 'WY', '82414', '307-555-6309', 0.00, 0.05);