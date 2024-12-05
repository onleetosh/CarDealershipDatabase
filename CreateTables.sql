-- CREATE DATABASE CarDealerships; --

use CarDealerships; 

-- create table Dealership (
-- 	DealershipID int auto_increment primary key,
-- 	DealershipName varchar(50) not null,
-- 	Address varchar(50) not null,
-- 	PhoneNumber varchar(12) not null);
    
    
--     create table Vehicle ( 
-- 	Vin int primary key, 
-- 	Year int not null,
-- 	Make varchar(50) not null, 
-- 	Model varchar(50) not null, 
--     VehicleType varchar(50) not null,
--     Color varchar(50) not null,
--     Odometer int null,
-- 	Price decimal(10, 2) not null, 
-- 	Sold int not null,
-- 	DealershipID int,
-- 	foreign key (DealershipID) references Dealership(DealershipID) );

-- create table Customer (
-- 	CustomerID int auto_increment primary key,
-- 	FirstName varchar(50) not null, 
-- 	LastName varchar(50) not null, 
--     Phone int not null, 
--     Email varchar(50) not null);   
    
    

-- create table LeaseContract(
-- 	LeaseID int auto_increment primary key,
-- 	LeaseDate date not null, 
-- 	CustomerID int,
-- 	Vin int, 
-- 	DealershipID int, 
--     LeaseContractExpectedFinalValue double not null,
--     LeaseContractLeaseFee double not null,
--     TotalPrice double not null,
--     MonthlyPayment double not null,
-- 	foreign key (CustomerID) references Customer(CustomerID),
-- 	foreign key(Vin) references Vehicle(Vin), 
-- 	foreign key(DealershipID) references Dealership(DealershipID));   

-- create table SalesContract(
-- 	SalesID int auto_increment primary key,
-- 	SalesDate date not null, 
-- 	CustomerID int,
-- 	Vin int, 
-- 	DealershipID int, 
--     SalesContractTaxes DOUBLE NOT NULL,
--     SalesContractRecordingFee DOUBLE NOT NULL,
--     SalesContractProcessingFee DOUBLE NOT NULL,
--     TotalPrice DOUBLE NOT NULL,
--     MonthlyPayment DOUBLE NOT NULL,
--     isFinance BOOLEAN NOT NULL,
-- 	foreign key (CustomerID) references Customer(CustomerID),
-- 	foreign key(Vin) references Vehicle(Vin), 
-- 	foreign key(DealershipID) references Dealership(DealershipID));  

-- create table Inventory ( 
-- 	Vin int,
-- 	DealershipID int,
--     primary key(Vin, DealershipID),
-- 	foreign key (Vin) references Vehicle(Vin),
-- 	foreign key (DealershipID) references Dealership(DealershipID));
--     

ALTER TABLE Customer CHANGE Phone Phone VARCHAR(15) NOT NULL;

    
    