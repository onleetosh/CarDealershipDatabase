USE CarDealership;

CREATE TABLE Vehicles ( 
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


