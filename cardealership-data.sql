USE cardealership;

insert into 
		Dealership (DealershipName, Address, Phone)
values
    ('Straw Hat Motors', 'Sunny Avenue, East Blue', '123-456-7890'), 
    ('Red-Haired Autos', 'Shanks Street, West Blue', '234-567-8901'),
    ('Blackbeard Cars', 'Jaya Road, Mock Town', '456-789-0123'),
    ('Big Mom Vehicles', 'Whole Cake Island, Totto Land', '678-901-2345'),
    ('Laws Auto Clinic', 'Heart Street, Punk Hazard', '901-234-5678') ;

INSERT INTO 
    Vehicle (Vin, Year, Make, Model, VehicleType, Color, Odometer, Price, Sold)
VALUES
    ('1282630', 2018, 'Honda', 'Accord', 'Sedan', 'White', 45000, 22000, FALSE),
    ('2827359', 2020, 'Toyota', 'Corolla', 'Sedan', 'Silver', 30000, 18000, FALSE),
    ('1288721', 2019, 'Ford', 'Focus', 'Hatchback', 'Blue', 37000, 15000, FALSE),
    ('1182328', 2021, 'Jeep', 'Grand Cherokee', 'SUV', 'Black', 22000, 35000, FALSE),
    ('3009289', 2020, 'Honda', 'CR-V', 'SUV', 'Gray', 28000, 27000, FALSE),

    ('2165833', 2017, 'Honda', 'HR-V', 'SUV', 'Red', 55000, 17000, FALSE),
    ('1025437', 2019, 'Cadillac', 'Escalade', 'SUV', 'Black', 34000, 45000, FALSE),
    ('5578925', 2021, 'Hyundai', 'Sonata', 'Sedan', 'Blue', 15000, 24000, FALSE),
    ('3642573', 2020, 'Ford', 'Fusion', 'Sedan', 'White', 32000, 20000, FALSE),
    ('1762925', 2019, 'Nissan', 'Altima', 'Sedan', 'Silver', 40000, 19000, FALSE),

    ('3009385', 2021, 'Volkswagen', 'Jetta', 'Sedan', 'Black', 22000, 21000, FALSE),
    ('5231125', 2022, 'Tesla', 'Model 3', 'Sedan', 'White', 12000, 50000, FALSE),
    ('1120349', 2020, 'Ford', 'F-150', 'Truck', 'Gray', 29000, 32000, FALSE),
    ('1629981', 2018, 'Ford', 'Explorer', 'SUV', 'Blue', 45000, 28000, FALSE),
    ('1983749', 2020, 'Honda', 'Civic', 'Sedan', 'Red', 33000, 20000, FALSE),

    ('2234320', 2022, 'Toyota', 'RAV4', 'SUV', 'Silver', 15000, 31000, FALSE),
    ('1988739', 2021, 'Ford', 'Escape', 'SUV', 'Gray', 19000, 29000, FALSE),
    ('4112349', 2019, 'Toyota', 'Camry', 'Sedan', 'White', 37000, 23000, FALSE),
    ('5872301', 2020, 'Kia', 'Sorento', 'SUV', 'Black', 26000, 25000, FALSE),
    ('1111933', 2018, 'Chevrolet', 'Malibu', 'Sedan', 'Blue', 47000, 16000, FALSE),

    ('5567809', 2019, 'Subaru', 'Outback', 'SUV', 'Green', 42000, 24000, FALSE),
    ('8891234', 2021, 'Mazda', 'CX-5', 'SUV', 'Red', 17000, 28000, FALSE),
    ('3324576', 2020, 'Toyota', 'Tacoma', 'Truck', 'White', 21000, 35000, FALSE),
    ('7801235', 2021, 'BMW', 'X5', 'SUV', 'Black', 16000, 60000, FALSE),
    ('9876543', 2019, 'Audi', 'A4', 'Sedan', 'Gray', 33000, 34000, FALSE),

    ('6654321', 2021, 'Kia', 'Sportage', 'SUV', 'White', 20000, 23000, FALSE),
    ('1122765', 2020, 'Volvo', 'XC90', 'SUV', 'Black', 24000, 40000, FALSE),
    ('7789123', 2018, 'Hyundai', 'Tucson', 'SUV', 'Blue', 50000, 18000, FALSE),
    ('3422987', 2019, 'Dodge', 'Charger', 'Sedan', 'Red', 42000, 27000, FALSE),
    ('4432019', 2020, 'Chevrolet', 'Camaro', 'Coupe', 'Yellow', 15000, 37000, FALSE),

    ('1284657', 2020, 'Nissan', 'Rogue', 'SUV', 'Gray', 26000, 25000, TRUE),
    ('2983645', 2021, 'Honda', 'Pilot', 'SUV', 'White', 22000, 37000, TRUE),
    ('3781209', 2019, 'Ford', 'Ranger', 'Truck', 'Blue', 39000, 29000, TRUE),
    ('1209876', 2021, 'Toyota', 'Highlander', 'SUV', 'Silver', 14000, 40000, TRUE),
    ('7812456', 2020, 'Hyundai', 'Elantra', 'Sedan', 'Red', 29000, 18000, TRUE),

    ('6501983', 2022, 'Jeep', 'Wrangler', 'SUV', 'Green', 8000, 45000, TRUE),
    ('2156789', 2020, 'Chevrolet', 'Traverse', 'SUV', 'Black', 26000, 32000, TRUE),
    ('9901456', 2019, 'Subaru', 'Forester', 'SUV', 'Silver', 40000, 24000, TRUE),
    ('8124532', 2021, 'Honda', 'Odyssey', 'Van', 'White', 12000, 37000, TRUE),
    ('4578096', 2019, 'Volkswagen', 'Passat', 'Sedan', 'Blue', 35000, 20000, TRUE);



INSERT INTO LeaseContract 
(ContractDate, CustomerID, Vin, ExpectedFinalValue, LeaseFee, TotalPrice, MonthlyPayment)
VALUES
('2023-11-10', 6, '6501983', 22500.00, 3150.00, 25650.00, 757.29), 
('2023-11-11', 7, '2156789', 16000.00, 2240.00, 18240.00, 538.52),
('2023-11-12', 8, '9901456', 12000.00, 1680.00, 13680.00, 403.89), 
('2023-11-13', 9, '8124532', 18500.00, 2590.00, 21090.00, 622.66), 
('2023-11-14', 10, '4578096',  10000.00, 1400.00, 11400.00, 336.57); 

INSERT INTO 
    Customer (FirstName, LastName, Phone, Email)
VALUES
    ('Boruto', 'Uzumaki', '555-1234', 'boruto.uzumaki@example.com'),
    ('Naruto', 'Uzumaki', '555-5678', 'naruto.uzumaki@example.com'),
    ('Luffy', 'Monkey D.', '555-9101', 'luffy.monkey@example.com'),
    ('Zoro', 'Roronoa', '555-1121', 'zoro.roronoa@example.com'),
    ('Sanji', 'Vinsmoke', '555-3141', 'sanji.vinsmoke@example.com'),
    
    ('Finn', 'Mertens', '555-5161', 'finn.mertens@example.com'),
    ('Jake', 'The Dog', '555-7181', 'jake.thedog@example.com'),
    ('Sasuke', 'Uchiha', '555-9202', 'sasuke.uchiha@example.com'),
    ('Kakashi', 'Hatake', '555-1223', 'kakashi.hatake@example.com'),
    ('Travis', 'Scott', '555-3454', 'nami.navigator@example.com');


 INSERT INTO SalesContract 
     (ContractDate, CustomerID, Vin, SalesTaxes, RecordingFee, ProcessingFee, TotalPrice, MonthlyPayment, isFinance)
VALUES
	('2023-11-01', 1, '1284657', 1250.00, 100.00, 495.00, 26845.00, 1871.90, false), 
    ('2023-11-02', 2, '2983645', 1850.00, 100.00, 495.00, 39445.00, 895.05, true), 
    ('2023-11-03', 3, '3781209', 1450.00, 100.00, 495.00, 31045.00, 0.00, false), 
    ('2023-11-04', 4, '1209876', 2000.00, 100.00, 495.00, 42595.00, 0.00, false), 
    ('2023-11-05', 5, '7812456', 900.00, 100.00, 495.00, 19495.00, 442.36, true);


INSERT INTO 
    Inventory (DealershipID, Vin)
VALUES
    (1, '1282630'), -- Honda Accord, Straw Hat Motors
    (2, '2827359'), -- Toyota Corolla, Red-Haired Autos
    (3, '1288721'), -- Ford Focus, Blackbeard Cars
    (4, '1182328'), -- Jeep Grand Cherokee, Big Mom Vehicles
    (5, '3009289'), -- Honda CR-V, Law's Auto Clinic
    
    (1, '2165833'), -- Honda HR-V, Straw Hat Motors
    (2, '1025437'), -- Cadillac Escalade, Red-Haired Autos
    (3, '5578925'), -- Hyundai Sonata, Blackbeard Cars
    (4, '3642573'), -- Ford Fusion, Big Mom Vehicles
    (5, '1762925'), -- Nissan Altima, Law's Auto Clinic
    
    (1, '3009385'), -- Volkswagen Jetta, Straw Hat Motors
    (2, '5231125'), -- Tesla Model 3, Red-Haired Autos
    (3, '1120349'), -- Ford F-150, Blackbeard Cars
    (4, '1629981'), -- Ford Explorer, Big Mom Vehicles
    (5, '1983749'), -- Honda Civic, Law's Auto Clinic
    
    (1, '2234320'), -- Toyota RAV4, Straw Hat Motors
    (2, '1988739'), -- Ford Escape, Red-Haired Autos
    (3, '4112349'), -- Toyota Camry, Blackbeard Cars
    (4, '5872301'), -- Kia Sorento, Big Mom Vehicles
    (5, '1111933'), -- Chevrolet Malibu, Law's Auto Clinic

    (1, '5567809'), -- Subaru Outback, Straw Hat Motors
    (2, '8891234'), -- Mazda CX-5, Red-Haired Autos
    (3, '3324576'), -- Toyota Tacoma, Blackbeard Cars
    (4, '7801235'), -- BMW X5, Big Mom Vehicles
    (5, '9876543'), -- Audi A4, Law's Auto Clinic
    
    (1, '6654321'), -- Kia Sportage, Straw Hat Motors
    (2, '1122765'), -- Volvo XC90, Red-Haired Autos
    (3, '7789123'), -- Hyundai Tucson,Blackbeard Cars
    (4, '3422987'), -- Dodge Charger, Law's Auto Clinic
    (5, '4432019'), -- Chevrolet Camaro, Law's Auto Clinic
    
    (1, '1284657'), -- Nissan Rogue, Straw Hat Motors
    (2, '2983645'), -- Honda Pilot, Red-Haired Autos
    (3, '3781209'), -- Ford Ranger, Blackbeard Cars
    (4, '1209876'), -- Toyota Highlander, Big Mom Vehicles
    (5, '7812456'), -- Hyundai Elantra, Law's Auto Clinic
    
    (1, '6501983'), -- Jeep Wrangler, Straw Hat Motors
    (2, '2156789'), -- Chevrolet Traverse, Red-Haired Autos
    (3, '9901456'), -- Subaru Forester, Blackbeard Cars
    (4, '8124532'), -- Honda Odyssey, Big Mom Vehicles
    (5, '4578096'); -- Volkswagen Passat, Law's Auto Clinic