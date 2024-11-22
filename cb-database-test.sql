USE CarDealership;

-- query to get all data from dealerships table --

	SELECT * FROM Dealerships;


-- query to get all data from vehicles table --

	SELECT * FROM Vehicles;


-- query to find a car by vin number --

	SELECT * FROM Vehicles 
	WHERE vin = '1025437';
    
-- query to find the dealership where a certain vehicle is located by vin --

	SELECT 
		Dealerships.DealershipID,
		Dealerships.DealershipName,
		Dealerships.Address,
		Vehicles.VIN, 
		Vehicles.Year, 
		Vehicles.Make, 
		Vehicles.Model, 
		Vehicles.Price
	FROM 
		Dealerships
	JOIN 
		Vehicles on Dealerships.DealershipID = Vehicles.DealershipID
	WHERE 
		Vehicles.VIN = '1025437';

-- query to find all dealerships that have a certain type of vehicle (ex. Red Ford Mustang)
    
	SELECT 
		Dealerships.DealershipID,
		Dealerships.DealershipName,
		Dealerships.Address,
		Vehicles.VIN, 
		Vehicles.Year, 
		Vehicles.Make, 
		Vehicles.Model, 
		Vehicles.Price
	FROM 
		Dealerships
	JOIN 
		Vehicles ON Dealerships.DealershipID = Vehicles.DealershipID
	WHERE 
		Vehicles.Make = 'Ford' and Vehicles.Year = '2019';

-- query to get all sales information for a specific dealership for a specific data range

	SELECT 
		SalesContracts.SalesID,
		SalesContracts.SalesDate,
		SalesContracts.CustomerID,
		Customers.FirstName,
		Customers.LastName,
		SalesContracts.VIN, 
		Vehicles.Year,
		Vehicles.Make,
		Vehicles.Model,
		Vehicles.Price,
		SalesContracts.DealershipID,
		Dealerships.DealershipName,
		Dealerships.Address,
		Dealerships.PhoneNumber
	FROM
		SalesContracts
	JOIN 
		Customers ON SalesContracts.CustomerID = Customers.CustomerID
	JOIN 
		Vehicles ON SalesContracts.VIN = Vehicles.VIN
	JOIN 
		Dealerships ON SalesContracts.DealershipID = Dealerships.DealershipID
	WHERE 
		SalesContracts.DealershipID = '1' -- Replace with actual ID
		AND SalesContracts.SalesDate BETWEEN '2024-01-01' AND '2024-05-01';
    

