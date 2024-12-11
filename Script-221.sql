-- creating trip global table --
CREATE TABLE globaltrips2024.globaltrips_2024_dec(
    CREATED_TIME DATE,
    STARTED_TIME DATE,
    DATED DATE,
    TRIP_ID VARCHAR(255),
    RIDER VARCHAR(255),
    VEHICLE_TYPE VARCHAR(50),
    DRIVER VARCHAR(255),
    PHONE_MODEL VARCHAR(255),
    PAYMENT VARCHAR(50),
    RIDE_TYPE VARCHAR(50),
    TOLLFEES DECIMAL(10, 2),
    DISTANCE_FROM_RIDER DECIMAL(10, 2),
    CORPORATE_ID VARCHAR(255),
    CITY VARCHAR(100),
    COUNTRY VARCHAR(50),
    TRIP_END_TIME DATE,
    PAYMENT_AMT DECIMAL(10, 2),
    PAYMENT_RECEIVED DECIMAL(10, 2),
    PARKING_FEE DECIMAL(10, 2),
    PICK_UP_LATLONG VARCHAR(50),
    DROP_OFF_LAT_LONG VARCHAR(50),
    PROMO VARCHAR(50),
    PROMO_CODE VARCHAR(50),
    LITTLE_COINS DECIMAL(10, 2),
    TRIP_DISTANCE DECIMAL(10, 2),
    TRIP_TIME INT,
    COST_PER_KM DECIMAL(10, 2),
    DEVICE VARCHAR(50),
    Favorite VARCHAR(50),
    Revenue DECIMAL(10, 2),
    CommissionRate DECIMAL(5, 2)    
);

select *
from globaltrips2024.globaltrips_2024_aug ga 
limit 10;

-- end of trips table --

-- creating trip requests table --
CREATE TABLE totalrequests2024.dec_2024(
    DAY_ VARCHAR(20),
    WEEKNUM INT,
    DATE_ DATE,
    MONTH_ VARCHAR(20),
    HOUR_ INT,
    CREATED_TIME DATE,
    VEHICLETYPE VARCHAR(50),
    DRIVER VARCHAR(255),
    TRIPTYPE VARCHAR(50),
    CITY VARCHAR(100),
    COUNTRY VARCHAR(50),
    LATITUDE DECIMAL(10, 7),
    LONGITUDE DECIMAL(10, 7),
    CATEGORY VARCHAR(50),
    CORPORATEID VARCHAR(255),
    RIDER_MOBILE_NUMBER VARCHAR(20),
    DISTANCE_FROM_RIDER DECIMAL(10, 2) 
);

select *
from totalrequests2024.aug_2024 a 
limit 10;

-- end of trip requests table --

-- start of all corporates table --

CREATE TABLE all_corporates.all_corporates (
    ParentID VARCHAR(50),
    CorporateID VARCHAR(50),
    Name VARCHAR(255),
    Country VARCHAR(50),
    Corporate VARCHAR(255),
    CreatedOn DATE,
    Corporate_Associate VARCHAR(255),
    Industry VARCHAR(100),
    Assignee VARCHAR(100)
);
-- end of all corporates table --

-- start of loans table --
CREATE TABLE IF NOT EXISTS loans (
    id INT AUTO_INCREMENT PRIMARY KEY,
    EMailID VARCHAR(100),
    LoanID VARCHAR(200),
    loancount INT,
    MobileNumber VARCHAR(20),
    InstallmentDate DATETIME,
    TRXID VARCHAR(50),
    TrxDate DATETIME,
    InstallmentID INT,
    PrincipalAmount DECIMAL(15, 2),
    amountIssued DECIMAL(15, 2),
    AmountPaid DECIMAL(15, 2),
    outstandingAmt DECIMAL(15, 2)
);

CREATE TABLE IF NOT EXISTS loan_issued (
    id INT AUTO_INCREMENT PRIMARY KEY,
    expectedPay DECIMAL(15, 2),
    AmountIssued DECIMAL(15, 2),
    AmountPaid DECIMAL(15, 2),
    outstandingAmt DECIMAL(15, 2),
    instances INT
);

CREATE TABLE IF NOT EXISTS due_drivers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    expectedPay DECIMAL(15, 2),
    AmountPaid DECIMAL(15, 2),
    outstandingAmt DECIMAL(15, 2),
    instances INT,
    pecentagePaid DECIMAL(5, 2)
);

CREATE TABLE IF NOT EXISTS loan_count (
    id INT AUTO_INCREMENT PRIMARY KEY,
    instances INT
);
-- start of loans table --

-- start of all riders table --

CREATE TABLE all_riders.all_riders (
    MobileNumber VARCHAR(200),
    Name VARCHAR(100),
    EMailID VARCHAR(355),
    CreatedOn DATETIME,
    Country VARCHAR(50),
    DATED DATE,
    Month_ VARCHAR(20),
    Year_ INT
);

-- Create the riders table
CREATE TABLE IF NOT EXISTS all_riders.riders (
    FullName VARCHAR(255) NOT NULL,
    MobileNumber VARCHAR(20) NOT NULL,
    Rating FLOAT DEFAULT NULL,
    RidesTaken INT DEFAULT 0,
    CreatedOn DATETIME,
    ProductVersion VARCHAR(255) DEFAULT NULL,
    IsSuspended BOOLEAN DEFAULT NULL
);
-- end of all riders table --

-- create online hours table --
CREATE TABLE online_hours.online_dec_2024 (
    EMAIL VARCHAR(255) NOT NULL,
    DATE_ DATE,
    Mobile_Number VARCHAR(20) NOT NULL,
    `0:00` INT DEFAULT 0,
    `1:00` INT DEFAULT 0,
    `2:00` INT DEFAULT 0,
    `3:00` INT DEFAULT 0,
    `4:00` INT DEFAULT 0,
    `5:00` INT DEFAULT 0,
    `6:00` INT DEFAULT 0,
    `7:00` INT DEFAULT 0,
    `8:00` INT DEFAULT 0,
    `9:00` INT DEFAULT 0,
    `10:00` INT DEFAULT 0,
    `11:00` INT DEFAULT 0,
    `12:00` INT DEFAULT 0,
    `13:00` INT DEFAULT 0,
    `14:00` INT DEFAULT 0,
    `15:00` INT DEFAULT 0,
    `16:00` INT DEFAULT 0,
    `17:00` INT DEFAULT 0,
    `18:00` INT DEFAULT 0,
    `19:00` INT DEFAULT 0,
    `20:00` INT DEFAULT 0,
    `21:00` INT DEFAULT 0,
    `22:00` INT DEFAULT 0,
    `23:00` INT DEFAULT 0,
    Total_Seconds INT DEFAULT 0,
    Total_Mins INT DEFAULT 0,
    Total_Hrs FLOAT DEFAULT 0
);
-- end of create online hours table --

-- create driver data table --

CREATE TABLE IF NOT EXISTS all_drivers.vtypes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vtype_name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS all_drivers.drivers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(255) NOT NULL,
    MobileNumber VARCHAR(15) NOT NULL,
    Rating DECIMAL(3,2),
    RidesTaken INT DEFAULT 0,
    ApprovedOn DATETIME,
    IsApproved TINYINT(1) DEFAULT 0,
    SoftwareVersion VARCHAR(50),
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

ALTER TABLE all_drivers.drivers MODIFY COLUMN MobileNumber VARCHAR(30);

-- end creating driver data table --







