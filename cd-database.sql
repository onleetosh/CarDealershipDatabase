/*
	step 1: 
    CREATE DATABASE CarDealership;
*/

use CarDealership;

/* 
step 2: create tables 
    
create table Dealerships (
	DealershipID int auto_increment primary key,
	DealershipName varchar(50) not null,
	Address varchar(50) not null,
	PhonerNumber varchar(12) not null);
    
create table Vehicles ( 
	Vin int primary key, 
	Year int not null,
	Make varchar(50) not null, 
	Model varchar(50) not null, 
    VehicleType varchar(50) not null,
    Color varchar(50) not null,
    Odometer int null,
	Price decimal(10, 2) not null, 
	Sold int not null,
	DealershipID int,
	foreign key (DealershipID) references Dealerships(DealershipID) );
        
create table Customers (
	CustomerID int auto_increment primary key,
	FirstName varchar(50) not null, 
	LastName varchar(50) not null );   
        


create table SalesContracts(
	SalesID int auto_increment primary key,
	SalesDate date not null, 
	CustomerID int,
	Vin int, 
	DealershipID int, 
	foreign key (CustomerID) references Customers(CustomerID),
	foreign key(Vin) references Vehicle(Vin), 
	foreign key(DealershipID) references Dealerships(DealershipID));  

 
create table Inventory ( 
	Vin int,
	DealershipID int,
    primary key(Vin, DealershipID),
	foreign key (Vin) references Vehicle(Vin),
	foreign key (DealershipID) references Dealerships(DealershipID));
    
*/




/* 
    
Step 3 - insert data for each table 


insert into 
		Dealerships (DealershipID, DealershipName, Address, PhoneNumber)
values
    (1, 'Straw Hat Motors', 'Sunny Avenue, East Blue', '123-456-7890'),
    (2, 'Red-Haired Autos', 'Shanks Street, West Blue', '234-567-8901'),
    (3, 'Mugiwara Dealership', 'Grand Line, Loguetown', '345-678-9012'),
    (4, 'Blackbeard Cars', 'Jaya Road, Mock Town', '456-789-0123'),
    (5, 'Marine HQ Motors', 'Fleet Admiral Blvd, Marineford', '567-890-1234'),
    (6, 'Big Mom Vehicles', 'Whole Cake Island, Totto Land', '678-901-2345'),
    (7, 'Kaidos Rides', 'Onigashima Heights, Wano', '789-012-3456'),
    (8, 'Doflamingo Auto Hub', 'Dressrosa Plaza, New World', '890-123-4567'),
    (9, 'Laws Auto Clinic', 'Heart Street, Punk Hazard', '901-234-5678'),
    (10, 'Zoro Motors', 'Santoryu Lane, Shimotsuki Village', '012-345-6789');

    
insert into 
	Inventory (Vin, DealershipID)
values
    ('1282630', 1), -- Honda Accord, Straw Hat Motors
    ('2827359', 2), -- Toyota Corolla, Red-Haired Autos
    ('1288721', 3), -- Ford Focus, Mugiwara Dealership
    ('1182328', 4), -- Jeep Grand Cherokee, Blackbeard Cars
    ('3009289', 5), -- Honda CR-V, Marine HQ Motors
    ('2165833', 6), -- Honda HR-V, Big Mom Vehicles
    ('1025437', 7), -- Cadillac Escalade, Kaido's Rides
    ('5578925', 8), -- Hyundai Sonata, Doflamingo Auto Hub
    ('3642573', 9), -- Ford Fusion, Law's Auto Clinic
    ('1762925', 10), -- Nissan Altima, Zoro Motors
    ('3009385', 1), -- Volkswagen Jetta, Straw Hat Motors
    ('5231125', 2), -- Tesla Model 3, Red-Haired Autos
    ('1120349', 3), -- Ford F-150, Mugiwara Dealership
    ('1629981', 4), -- Ford Explorer, Blackbeard Cars
    ('1983749', 5), -- Honda Civic, Marine HQ Motors
    ('2234320', 6), -- Toyota RAV4, Big Mom Vehicles
    ('1988739', 7), -- Ford Escape, Kaido's Rides
    ('4112349', 8), -- Toyota Camry, Doflamingo Auto Hub
    ('5872301', 9), -- Kia Sorento, Law's Auto Clinic
    ('1111933', 10); -- Chevrolet Malibu, Zoro Motors
    
  
INSERT INTO 
    Vehicles (Vin, Year, Make, Model, VehicleType, Color, Odometer, Price, Sold, DealershipID)
VALUES
    ('1282630', 2020, 'Honda', 'Accord', 'Sedan', 'Black', 25000, 20000, 1, 1), -- Straw Hat Motors
    ('2827359', 2021, 'Toyota', 'Corolla', 'Sedan', 'White', 22000, 19000, 0, 2), -- Red-Haired Autos
    ('1288721', 2019, 'Ford', 'Focus', 'Hatchback', 'Blue', 20000, 17000, 1, 3), -- Mugiwara Dealership
    ('1182328', 2021, 'Jeep', 'Grand Cherokee', 'SUV', 'Gray', 35000, 33000, 1, 4), -- Blackbeard Cars
    ('3009289', 2022, 'Honda', 'CR-V', 'SUV', 'Silver', 30000, 31000, 0, 5), -- Marine HQ Motors
    ('2165833', 2020, 'Honda', 'HR-V', 'SUV', 'Red', 28000, 27000, 0, 6), -- Big Mom Vehicles
    ('1025437', 2023, 'Cadillac', 'Escalade', 'SUV', 'Black', 75000, 78000, 1, 7), -- Kaido's Rides
    ('5578925', 2021, 'Hyundai', 'Sonata', 'Sedan', 'Blue', 24000, 22000, 0, 8), -- Doflamingo Auto Hub
    ('3642573', 2018, 'Ford', 'Fusion', 'Sedan', 'Gray', 18000, 16000, 0, 9), -- Law's Auto Clinic
    ('1762925', 2021, 'Nissan', 'Altima', 'Sedan', 'Black', 23000, 21000, 1, 10), -- Zoro Motors
    ('3009385', 2020, 'Volkswagen', 'Jetta', 'Sedan', 'Silver', 22000, 20000, 1, 1), -- Straw Hat Motors
    ('5231125', 2023, 'Tesla', 'Model 3', 'Sedan', 'White', 40000, 45000, 0, 2), -- Red-Haired Autos
    ('1120349', 2022, 'Ford', 'F-150', 'Truck', 'Black', 45000, 47000, 0, 3), -- Mugiwara Dealership
    ('1629981', 2019, 'Ford', 'Explorer', 'SUV', 'Blue', 34000, 32000, 0, 4), -- Blackbeard Cars
    ('1983749', 2022, 'Honda', 'Civic', 'Sedan', 'Gray', 22000, 23000, 1, 5), -- Marine HQ Motors
    ('2234320', 2023, 'Toyota', 'RAV4', 'SUV', 'White', 31000, 32000, 0, 6), -- Big Mom Vehicles
    ('1988739', 2020, 'Ford', 'Escape', 'SUV', 'Silver', 29000, 28000, 0, 7), -- Kaido's Rides
    ('4112349', 2021, 'Toyota', 'Camry', 'Sedan', 'Blue', 27000, 26000, 1, 8), -- Doflamingo Auto Hub
    ('5872301', 2023, 'Kia', 'Sorento', 'SUV', 'Red', 35000, 36000, 0, 9), -- Law's Auto Clinic
    ('1111933', 2022, 'Chevrolet', 'Malibu', 'Sedan', 'Black', 25000, 24000, 1, 10); -- Zoro Motors
    
insert into
	SalesContracts(SalesID, SalesDate, CustomerID, Vin, DealershipID)
values
    (1, '2024-01-15', 101, '1282630', 1), -- Honda Accord, Straw Hat Motors
    (2, '2024-02-20', 102, '1288721', 3), -- Ford Focus, Mugiwara Dealership
    (3, '2024-03-05', 103, '1182328', 4), -- Jeep Grand Cherokee, Blackbeard Cars
    (4, '2024-04-10', 104, '1025437', 7), -- Cadillac Escalade, Kaido's Rides
    (5, '2024-05-18', 105, '1762925', 10), -- Nissan Altima, Zoro Motors
    (6, '2024-06-12', 106, '3009385', 1), -- Volkswagen Jetta, Straw Hat Motors
    (7, '2024-07-08', 107, '1983749', 5), -- Honda Civic, Marine HQ Motors
    (8, '2024-08-23', 108, '4112349', 8), -- Toyota Camry, Doflamingo Auto Hub
    (9, '2024-09-01', 109, '1111933', 10), -- Chevrolet Malibu, Zoro Motors
    (10, '2024-10-15', 110, '2827359', 2); -- Toyota Corolla, Red-Haired Autos
    
insert into 
	Customers (CustomerID, FirstName, LastName)
values
    (101, 'Luffy', 'Monkey'), -- Customer for Honda Accord
    (102, 'Nami', 'Swan'), -- Customer for Ford Focus
    (103, 'Zoro', 'Roronoa'), -- Customer for Jeep Grand Cherokee
    (104, 'Sanji', 'Vinsmoke'), -- Customer for Cadillac Escalade
    (105, 'Robin', 'Nico'), -- Customer for Nissan Altima
    (106, 'Franky', 'Cutty'), -- Customer for Volkswagen Jetta
    (107, 'Brook', 'Soul'), -- Customer for Honda Civic
    (108, 'Usopp', 'Sniper'), -- Customer for Toyota Camry
    (109, 'Chopper', 'Tony Tony'), -- Customer for Chevrolet Malibu
    (110, 'Shanks', 'Red-Haired'); -- Customer for Toyota Corolla
    
*/