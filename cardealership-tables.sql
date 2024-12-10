
use cardealership; 

create table Dealership (
	DealershipID int auto_increment primary key,
	DealershipName varchar(50) not null,
	Address varchar(50) not null,
	Phone varchar(12) not null);
    
    
create table Vehicle ( 
	Vin int primary key, 
	Year int not null,
	Make varchar(50) not null, 
	Model varchar(50) not null, 
    VehicleType varchar(50) not null,
    Color varchar(50) not null,
    Odometer int null,
	Price decimal(10, 2) not null, 
	Sold int not null);
    
    create table Customer (
	CustomerID int auto_increment primary key,
	FirstName varchar(50) not null, 
	LastName varchar(50) not null, 
    Phone varchar(20) not null, 
    Email varchar(50) not null);   
    
    create table LeaseContract(
	ContractID int auto_increment primary key,
	ContractDate date not null, 
	CustomerID int not null,
	Vin int not null, 
    ExpectedFinalValue double not null,
    LeaseFee double not null,
    TotalPrice double not null,
    MonthlyPayment double not null,
	foreign key (CustomerID) references Customer(CustomerID),
	foreign key(Vin) references Vehicle(Vin) ); 
    
    
    create table SalesContract(
	ContractID int auto_increment primary key,
	ContractDate date not null, 
	CustomerID int not null,
	Vin int not null, 
    SalesTaxes DOUBLE NOT NULL,
    RecordingFee DOUBLE NOT NULL,
    ProcessingFee DOUBLE NOT NULL,
    TotalPrice DOUBLE NOT NULL,
    MonthlyPayment DOUBLE NOT NULL,
    isFinance BOOLEAN NOT NULL,
	foreign key (CustomerID) references Customer(CustomerID),
	foreign key(Vin) references Vehicle(Vin) );  
    
    -- Rename the column
ALTER TABLE SalesContract 
RENAME COLUMN ContratDate TO ContractDate;
    
    
    create table Inventory ( 
	DealershipID int not null,
    Vin int not null,
    primary key(Vin, DealershipID),
	foreign key (DealershipID) references Dealership(DealershipID),
    foreign key (Vin) references Vehicle(Vin));
    
    
    