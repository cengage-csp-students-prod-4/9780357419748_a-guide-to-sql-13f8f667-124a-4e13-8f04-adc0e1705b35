CREATE table Rep (
    REP_ID char(2) PRIMARY KEY,
    FIRST_NAME varchar(20),
    LAST_NAME varchar(20),
    ADDRESS varchar(20),
    CITY varchar(15),
    STATE char(2),
    POSTAL char(5),
    CELL_PHONE char(12),
    COMISSION decimal(7,2),
    RATE decimal(3,2)
);