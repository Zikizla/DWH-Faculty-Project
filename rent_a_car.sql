CREATE TABLE Country
(
    CountryID INT PRIMARY KEY,
    CountryName VARCHAR(255) NOT NULL
);

CREATE TABLE City
(
    CityID INT PRIMARY KEY,
    CityName VARCHAR(255) NOT NULL,
    CountryID INT NOT NULL,
    FOREIGN KEY (CountryID) REFERENCES Country(CountryID)
);

CREATE TABLE Location
(
    LocationID INT PRIMARY KEY,
    LocationName VARCHAR(255) NOT NULL,
    Postal_Code INT NOT NULL,
    CityID INT NOT NULL,
    FOREIGN KEY (CityID) REFERENCES City(CityID)
);

CREATE TABLE Store
(
    StoreID INT PRIMARY KEY,
    StoreName VARCHAR(255) NOT NULL,
    Phone_Number INT NOT NULL,
    Address VARCHAR(255) NOT NULL,
    LocationID INT NOT NULL,
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

CREATE TABLE Customer
(
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Date_Of_Birth DATE NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Phone_Number VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    LocationID INT NOT NULL,
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

CREATE TABLE Section
(
    SectionID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

CREATE TABLE Employee
(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Date_Of_Birth DATE NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Phone_Number VARCHAR(255) NOT NULL,
    Position VARCHAR(255) NOT NULL,
    HireDate DATE NOT NULL,
    Address VARCHAR(255) NOT NULL,
    SectionID INT NOT NULL,
    LocationID INT NOT NULL,
    FOREIGN KEY (SectionID) REFERENCES Section(SectionID),
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

CREATE TABLE Brand
(
    BrandID INT PRIMARY KEY,
    BrandName VARCHAR(255) NOT NULL
);

CREATE TABLE Model
(
    ModelID INT PRIMARY KEY,
    ModelName VARCHAR(255) NOT NULL,
    BrandID INT NOT NULL,
    FOREIGN KEY (BrandID) REFERENCES Brand(BrandID)
);

CREATE TABLE Vehicle
(
    VehicleID INT PRIMARY KEY,
    Year INT NOT NULL,
    Color VARCHAR(255) NOT NULL,
    LicensePlate VARCHAR(255) NOT NULL,
    Available VARCHAR(255) NOT NULL,
    Transmission_Type VARCHAR(255) NOT NULL,
    Fuel_Type VARCHAR(255) NOT NULL,
    ModelID INT NOT NULL,
    FOREIGN KEY (ModelID) REFERENCES Model(ModelID)
);

CREATE TABLE Date
(
    Date DATE NOT NULL,
    Year INT NOT NULL,
    Month INT NOT NULL,
    Day  INT NOT NULL,
    DayOfWeek INT NOT NULL,
    Week INT NOT NULL
);

CREATE TABLE Rent
(
    RentID INT PRIMARY KEY,
    ContractNumber INT NOT NULL,
    ReceiptNumber INT NOT NULL,
    Price INT NOT NULL,
    Insurance INT NOT NULL,
    Discount_Amount INT NOT NULL,
    PaymentDate DATE NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    RentHours INT NOT NULL,
    RentMiles INT NOT NULL,
    CustomerID INT NOT NULL,
    VehicleID INT NOT NULL,
    StoreID INT NOT NULL,
    EmployeeID INT NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID),
    FOREIGN KEY (StoreID) REFERENCES Store(StoreID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

INSERT INTO Country(CountryID, CountryName) VALUES(1,'Bosnia AND Herzegovina');
INSERT INTO Country(CountryID, CountryName) VALUES(2,'United States of America');
INSERT INTO Country(CountryID, CountryName) VALUES(3,'United Kingdom');
INSERT INTO Country(CountryID, CountryName) VALUES(4,'Germany');
INSERT INTO Country(CountryID, CountryName) VALUES(5,'France');
INSERT INTO Country(CountryID, CountryName) VALUES(6,'Spain');
INSERT INTO Country(CountryID, CountryName) VALUES(7,'Portugal');
INSERT INTO Country(CountryID, CountryName) VALUES(8,'Ukraine');
INSERT INTO Country(CountryID, CountryName) VALUES(9,'Croatia');
INSERT INTO Country(CountryID, CountryName) VALUES(10,'Serbia');

INSERT INTO City(CityID, CityName, CountryID) VALUES(1,'Sarajevo',1);
INSERT INTO City(CityID, CityName, CountryID) VALUES(2,'New York',2);
INSERT INTO City(CityID, CityName, CountryID) VALUES(3,'London',3);
INSERT INTO City(CityID, CityName, CountryID) VALUES(4,'Berlin',4);
INSERT INTO City(CityID, CityName, CountryID) VALUES(5,'Paris',5);
INSERT INTO City(CityID, CityName, CountryID) VALUES(6,'Barcelona',6);
INSERT INTO City(CityID, CityName, CountryID) VALUES(7,'Lisbon',7);
INSERT INTO City(CityID, CityName, CountryID) VALUES(8,'Kiev',8);
INSERT INTO City(CityID, CityName, CountryID) VALUES(9,'Zagreb',9);
INSERT INTO City(CityID, CityName, CountryID) VALUES(10,'Belgrade',10);

INSERT INTO Location(LocationID, LocationName, Postal_Code, CityID) VALUES(1,'Dobrinja',71000,1);
INSERT INTO Location(LocationID, LocationName, Postal_Code, CityID) VALUES(2,'Manhattan',10001,2);
INSERT INTO Location(LocationID, LocationName, Postal_Code, CityID) VALUES(3,'Westminster',92655,3);
INSERT INTO Location(LocationID, LocationName, Postal_Code, CityID) VALUES(4,'Pankow',10557,4);
INSERT INTO Location(LocationID, LocationName, Postal_Code, CityID) VALUES(5,'Louvre',75001,5);
INSERT INTO Location(LocationID, LocationName, Postal_Code, CityID) VALUES(6,'Gràcia',14540,6);
INSERT INTO Location(LocationID, LocationName, Postal_Code, CityID) VALUES(7,'Castelo',7040,7);
INSERT INTO Location(LocationID, LocationName, Postal_Code, CityID) VALUES(8,'Dniprovskyi District',02132,8);
INSERT INTO Location(LocationID, LocationName, Postal_Code, CityID) VALUES(9,'Buzin',10000,9);
INSERT INTO Location(LocationID, LocationName, Postal_Code, CityID) VALUES(10,'Dedinje',101801,10);

INSERT INTO Store(StoreID, StoreName, Phone_Number, Address, LocationID) VALUES(1,'Huso Autombile','8283442793','Zmaj od Bosne 2',1);
INSERT INTO Store(StoreID, StoreName, Phone_Number, Address, LocationID) VALUES(2,'Manhattan Cars','2025527200','5th Avenue 3',2);
INSERT INTO Store(StoreID, StoreName, Phone_Number, Address, LocationID) VALUES(3,'Kings Rentals','7012383582','Oxford Street 56',3);
INSERT INTO Store(StoreID, StoreName, Phone_Number, Address, LocationID) VALUES(4,'Kaiser Wagons','5413588260','Ebertstraße 12',4);
INSERT INTO Store(StoreID, StoreName, Phone_Number, Address, LocationID) VALUES(5,'Eiffel Motors','9046888750','Avenue Montaigne 53',5);
INSERT INTO Store(StoreID, StoreName, Phone_Number, Address, LocationID) VALUES(6,'Los Vehículos','8122337280','La Rambla 64',6);
INSERT INTO Store(StoreID, StoreName, Phone_Number, Address, LocationID) VALUES(7,'Os Veículos','8167955095','Rua da Bica 13',7);
INSERT INTO Store(StoreID, StoreName, Phone_Number, Address, LocationID) VALUES(8,'Jaki Vehiclei','3019855593','Khreshchatyk 13',8);
INSERT INTO Store(StoreID, StoreName, Phone_Number, Address, LocationID) VALUES(9,'Rimac Vozila','2544420388','Tkalciceva Street 24',9);
INSERT INTO Store(StoreID, StoreName, Phone_Number, Address, LocationID) VALUES(10,'Tesla Auta','5735696474','Kneza Mihaila',10);

INSERT INTO Customer(CustomerID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Address, LocationID) VALUES(1,'Mujo','Mujic','1990-8-24','mujomujic@gmail.com','82235232793','Zmaj od Bosne 4',1);
INSERT INTO Customer(CustomerID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Address, LocationID) VALUES(2,'John','Samuel','1993-10-12','johnsamuel@gmail.com','9532952394','5th Avenue 5',2);
INSERT INTO Customer(CustomerID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Address, LocationID) VALUES(3,'Charles','Dickins','1939-4-23','charlesdickins@gmail.com','8863583755','Oxford Street 5',3);
INSERT INTO Customer(CustomerID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Address, LocationID) VALUES(4,'Philiph','Lahm','1954-7-1','philiphlahm@gmail.com','1754272345','Ebertstraße 1',4);
INSERT INTO Customer(CustomerID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Address, LocationID) VALUES(5,'Kylian','Mbappe','1981-6-31','kylianmbappe@gmail.com','854623425','Avenue Montaigne 3',5);
INSERT INTO Customer(CustomerID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Address, LocationID) VALUES(6,'Paul','Gasol','1971-12-1','paulgasol@gmail.com','475435345','La Rambla 69',6);
INSERT INTO Customer(CustomerID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Address, LocationID) VALUES(7,'Cristiano','Ronaldo','1971-3-22','cristianoronaldo@gmail.com','12476546','Rua da Bica 23',7);
INSERT INTO Customer(CustomerID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Address, LocationID) VALUES(8,'Vitali','Klitschko','1084-12-24','vitaliklitschko@gmail.com','6542345','Khreshchatyk 15',8);
INSERT INTO Customer(CustomerID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Address, LocationID) VALUES(9,'Luka','Modric','1980-9-10','lukamodric@gmail.com','74345234','Tkalciceva Street 34',9);
INSERT INTO Customer(CustomerID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Address, LocationID) VALUES(10,'Lazar','Teodorovic','1983-11-12','lazarteodorovic@gmail.com','967546343','Kneza Mihaila 10',10);

INSERT INTO Section(SectionID, Name) VALUES(1,'Cevapi Ltd');
INSERT INTO Section(SectionID, Name) VALUES(2,'Big Apple Incorporated');
INSERT INTO Section(SectionID, Name) VALUES(3,'London Eye Inc.');
INSERT INTO Section(SectionID, Name) VALUES(4,'Fahren Foundation');
INSERT INTO Section(SectionID, Name) VALUES(5,'Voyage Ltd');
INSERT INTO Section(SectionID, Name) VALUES(6,'El Camino ASsociates');
INSERT INTO Section(SectionID, Name) VALUES(7,'La Ruta PC');
INSERT INTO Section(SectionID, Name) VALUES(8,'Podorozh Inc.');
INSERT INTO Section(SectionID, Name) VALUES(9,'Cro Putevi doo');
INSERT INTO Section(SectionID, Name) VALUES(10,'Put Srpski doo');

INSERT INTO Employee(EmployeeID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Position, HireDate, Address, SectionID, LocationID) VALUES(1,'Emir','Medjedovic','1993-12-12','emirmedjedovic@gmail.com','35236543634','CFO','2003-12-3','Zmaj od Bosne 3',1,1);
INSERT INTO Employee(EmployeeID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Position, HireDate, Address, SectionID, LocationID) VALUES(2,'George','Jackson','1987-6-6','georgejackson@gmail.com','53523643','Manager','2002-11-9','5th Avenue 55',2,2);
INSERT INTO Employee(EmployeeID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Position, HireDate, Address, SectionID, LocationID) VALUES(3,'Edward','Newton','1990-1-12','edwardnewton@gmail.com','4237623463','Receptionist','2005-1-23','Oxford Street 1',3,3);
INSERT INTO Employee(EmployeeID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Position, HireDate, Address, SectionID, LocationID) VALUES(4,'Mesut','Ozil','1982-12-29','mensutozil@gmail.com','16341674','Manager','2006-9-12','Ebertstraße 6',4,4);
INSERT INTO Employee(EmployeeID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Position, HireDate, Address, SectionID, LocationID) VALUES(5,'Oliver','Giroud','1974-8-12','olivergiroud@gmail.com','432754855','Manager','2002-3-5','Avenue Montaigne 33',5,5);
INSERT INTO Employee(EmployeeID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Position, HireDate, Address, SectionID, LocationID) VALUES(6,'Rafael','Nadal','1989-8-23','rafaelnadal@gmail.com','4754854534','Receptionist','2003-12-5','La Rambla 699',6,6);
INSERT INTO Employee(EmployeeID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Position, HireDate, Address, SectionID, LocationID) VALUES(7,'Vasko','De Gama','1970-12-23','vaskodegama@gmail.com','86578463','Receptionist','2004-6-10','Rua da Bica 123',7,7);
INSERT INTO Employee(EmployeeID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Position, HireDate, Address, SectionID, LocationID) VALUES(8,'Vlodimir','Zelensky','1984-2-29','vlodimirzelensky@gmail.com','12312464','Receptionist','2004-7-12','Khreshchatyk 1',8,8);
INSERT INTO Employee(EmployeeID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Position, HireDate, Address, SectionID, LocationID) VALUES(9,'Ivo','Sanader','2000-2-21','ivosanader@gmail.com','454362474','Receptionist','2002-4-12','Tkalciceva Street 5',9,9);
INSERT INTO Employee(EmployeeID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Position, HireDate, Address, SectionID, LocationID) VALUES(10,'Novak','Djokovic','1973-4-12','novakdjokovic@gmail.com','327452345','Receptionist','2003-10-5','Kneza Mihaila 100',10,10);

INSERT INTO Brand(BrandID, BrandName) VALUES(1,'Mercedes Benz');
INSERT INTO Brand(BrandID, BrandName) VALUES(2,'Audi');
INSERT INTO Brand(BrandID, BrandName) VALUES(3,'Volkswagen');
INSERT INTO Brand(BrandID, BrandName) VALUES(4,'BMW');
INSERT INTO Brand(BrandID, BrandName) VALUES(5,'Renault');
INSERT INTO Brand(BrandID, BrandName) VALUES(6,'Alfa Romeo');
INSERT INTO Brand(BrandID, BrandName) VALUES(7,'Tesla');
INSERT INTO Brand(BrandID, BrandName) VALUES(8,'Volvo');
INSERT INTO Brand(BrandID, BrandName) VALUES(9,'Skoda');
INSERT INTO Brand(BrandID, BrandName) VALUES(10,'Nissan');

INSERT INTO Model(ModelID, ModelName, BrandID) VALUES(1,'E530',1);
INSERT INTO Model(ModelID, ModelName, BrandID) VALUES(2,'A6',2);
INSERT INTO Model(ModelID, ModelName, BrandID) VALUES(3,'Golf 5Plus',3);
INSERT INTO Model(ModelID, ModelName, BrandID) VALUES(4,'X5',4);
INSERT INTO Model(ModelID, ModelName, BrandID) VALUES(5,'Megan',5);
INSERT INTO Model(ModelID, ModelName, BrandID) VALUES(6,'147',6);
INSERT INTO Model(ModelID, ModelName, BrandID) VALUES(7,'Model X',7);
INSERT INTO Model(ModelID, ModelName, BrandID) VALUES(8,'V60',8);
INSERT INTO Model(ModelID, ModelName, BrandID) VALUES(9,'Fabia',9);
INSERT INTO Model(ModelID, ModelName, BrandID) VALUES(10,'Juke',10);

INSERT INTO Vehicle(VehicleID, Year, Color, LicensePlate, Available, Transmission_Type, Fuel_Type, ModelID) VALUES(1,'1999','Red','A534F','YES','Manual','Diesel',1);
INSERT INTO Vehicle(VehicleID, Year, Color, LicensePlate, Available, Transmission_Type, Fuel_Type, ModelID) VALUES(2,'2010','Blue','D934E','YES','Manual','Diesel',2);
INSERT INTO Vehicle(VehicleID, Year, Color, LicensePlate, Available, Transmission_Type, Fuel_Type, ModelID) VALUES(3,'2012','Green','L934D','YES','Automatic','Gasoline',3);
INSERT INTO Vehicle(VehicleID, Year, Color, LicensePlate, Available, Transmission_Type, Fuel_Type, ModelID) VALUES(4,'2020','Pink','X248R','NO','Manual','Diesel',4);
INSERT INTO Vehicle(VehicleID, Year, Color, LicensePlate, Available, Transmission_Type, Fuel_Type, ModelID) VALUES(5,'2022','Yellow','O0239E','YES','Automatic','Gasoline',5);
INSERT INTO Vehicle(VehicleID, Year, Color, LicensePlate, Available, Transmission_Type, Fuel_Type, ModelID) VALUES(6,'2021','Green','A234E','NO','Automatic','Gasoline',6);
INSERT INTO Vehicle(VehicleID, Year, Color, LicensePlate, Available, Transmission_Type, Fuel_Type, ModelID) VALUES(7,'2003','Red','C032E','NO','Automatic','Electric',7);
INSERT INTO Vehicle(VehicleID, Year, Color, LicensePlate, Available, Transmission_Type, Fuel_Type, ModelID) VALUES(8,'2015','Red','T346Z','YES','Automatic','Gasoline',8);
INSERT INTO Vehicle(VehicleID, Year, Color, LicensePlate, Available, Transmission_Type, Fuel_Type, ModelID) VALUES(9,'2012','Black','I064R','YES','Automatic','Hybrid',9);
INSERT INTO Vehicle(VehicleID, Year, Color, LicensePlate, Available, Transmission_Type, Fuel_Type, ModelID) VALUES(10,'2020','Black','P435F','NO','Automatic','Hybrid',10);

INSERT INTO Date(Date, Year, Month, Day, DayofWeek, Week) VALUES('2022-1-1',2022,1,1,1,1);
INSERT INTO Date(Date, Year, Month, Day, DayofWeek, Week) VALUES('2022-1-2',2022,1,2,2,1);
INSERT INTO Date(Date, Year, Month, Day, DayofWeek, Week) VALUES('2022-1-3',2022,1,3,3,1);
INSERT INTO Date(Date, Year, Month, Day, DayofWeek, Week) VALUES('2022-1-4',2022,1,4,4,1);
INSERT INTO Date(Date, Year, Month, Day, DayofWeek, Week) VALUES('2022-1-5',2022,1,5,5,1);
INSERT INTO Date(Date, Year, Month, Day, DayofWeek, Week) VALUES('2022-1-6',2022,1,6,6,1);
INSERT INTO Date(Date, Year, Month, Day, DayofWeek, Week) VALUES('2022-1-7',2022,1,7,7,1);
INSERT INTO Date(Date, Year, Month, Day, DayofWeek, Week) VALUES('2022-1-8',2022,1,8,1,2);
INSERT INTO Date(Date, Year, Month, Day, DayofWeek, Week) VALUES('2022-1-9',2022,1,9,2,2);
INSERT INTO Date(Date, Year, Month, Day, DayofWeek, Week) VALUES('2022-1-10',2022,1,10,3,2);

INSERT INTO Rent(RentID, ContractNumber, ReceiptNumber, Price, Insurance, Discount_Amount, PaymentDate, StartDate, EndDate, RentHours, RentMiles, CustomerID, VehicleID, StoreID, EmployeeID) VALUES(1,1,1,'150','100','0','2020-3-12','2020-3-15','2020-3-18',72,123,1,1,1,1);
INSERT INTO Rent(RentID, ContractNumber, ReceiptNumber, Price, Insurance, Discount_Amount, PaymentDate, StartDate, EndDate, RentHours, RentMiles, CustomerID, VehicleID, StoreID, EmployeeID) VALUES(2,2,2,'250','110','0','2018-2-20','2018-2-25','2018-3-1',96,230,2,2,2,2);
INSERT INTO Rent(RentID, ContractNumber, ReceiptNumber, Price, Insurance, Discount_Amount, PaymentDate, StartDate, EndDate, RentHours, RentMiles, CustomerID, VehicleID, StoreID, EmployeeID) VALUES(3,3,3,'300','120','0','2015-11-10','2015-11-18','2015-11-20',48,55,3,3,3,3);
INSERT INTO Rent(RentID, ContractNumber, ReceiptNumber, Price, Insurance, Discount_Amount, PaymentDate, StartDate, EndDate, RentHours, RentMiles, CustomerID, VehicleID, StoreID, EmployeeID) VALUES(4,4,4,'400','130','50','2020-4-5','2020-5-5','2020-4-10',120,459,4,4,4,4);
INSERT INTO Rent(RentID, ContractNumber, ReceiptNumber, Price, Insurance, Discount_Amount, PaymentDate, StartDate, EndDate, RentHours, RentMiles, CustomerID, VehicleID, StoreID, EmployeeID) VALUES(5,5,5,'250','140','50','2022-7-15','2022-7-15','2022-7-18',72,300,5,5,5,5);
INSERT INTO Rent(RentID, ContractNumber, ReceiptNumber, Price, Insurance, Discount_Amount, PaymentDate, StartDate, EndDate, RentHours, RentMiles, CustomerID, VehicleID, StoreID, EmployeeID) VALUES(6,6,6,'300','140','50','2019-9-1','2019-9-3','2019-9-6',72,333,6,6,6,6);
INSERT INTO Rent(RentID, ContractNumber, ReceiptNumber, Price, Insurance, Discount_Amount, PaymentDate, StartDate, EndDate, RentHours, RentMiles, CustomerID, VehicleID, StoreID, EmployeeID) VALUES(7,7,7,'300','130','100','2018-8-5','2018-8-5','2018-8-10',120,503,7,7,7,7);
INSERT INTO Rent(RentID, ContractNumber, ReceiptNumber, Price, Insurance, Discount_Amount, PaymentDate, StartDate, EndDate, RentHours, RentMiles, CustomerID, VehicleID, StoreID, EmployeeID) VALUES(8,8,8,'150','130','50','2020-9-12','2020-9-12','2020-9-20',192,1024,8,8,8,8);
INSERT INTO Rent(RentID, ContractNumber, ReceiptNumber, Price, Insurance, Discount_Amount, PaymentDate, StartDate, EndDate, RentHours, RentMiles, CustomerID, VehicleID, StoreID, EmployeeID) VALUES(9,9,9,'150','110','0','2022-1-1','2022-1-5','2022-1-20',360,2222,9,9,9,9);
INSERT INTO Rent(RentID, ContractNumber, ReceiptNumber, Price, Insurance, Discount_Amount, PaymentDate, StartDate, EndDate, RentHours, RentMiles, CustomerID, VehicleID, StoreID, EmployeeID) VALUES(10,10,10,'250','110','100','2022-1-3','2022-1-3','2022-1-8',120,346,10,10,10,10);

CREATE TABLE Dim_Employee AS
SELECT EmployeeID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Position, HireDate, Section.Name AS SectionName,
Country.CountryName, City.CityName, Location.LocationName, Location.Postal_Code, Address
FROM Employee, Section, Location, City, Country
WHERE Section.SectionID=Employee.SectionID AND Employee.LocationID=Location.LocationID
AND Location.CityID=City.CityID AND City.CountryID=Country.CountryID;

CREATE TABLE Dim_Store AS
SELECT StoreID, StoreName, Phone_Number, Country.CountryName, City.CityName, Location.LocationName, Location.Postal_Code, Address
FROM Store, Location, City, Country
WHERE Store.LocationID=Location.LocationID AND Location.CityID=City.CityID AND City.CountryID=Country.CountryID;

CREATE TABLE Dim_Customer AS
SELECT CustomerID, FirstName, LastName, Date_Of_Birth, Email, Phone_Number, Country.CountryName, City.CityName, Location.LocationName, Location.Postal_Code, Address
FROM Customer, Location, City, Country
WHERE Customer.LocationID=Location.LocationID AND Location.CityID=City.CityID AND City.CountryID=Country.CountryID;

CREATE TABLE Dim_Vehicle AS
SELECT Vehicle.VehicleID, Year, Color, LicensePlate, Available, Transmission_Type, Fuel_Type, Model.ModelName, Brand.BrandName
FROM Vehicle, Model, Brand
WHERE Model.ModelID = Vehicle.ModelID AND Brand.BrandID = Model.BrandID;

CREATE TABLE Dim_Date AS
SELECT Date, Year, Month, Day, DayOfWeek, Week
FROM Date;

-- Dimenzije Izlistane
SELECT * FROM Dim_Employee;
SELECT * FROM Dim_Store;
SELECT * FROM Dim_Customer;
SELECT * FROM Dim_Vehicle;
SELECT * FROM Dim_Date;

CREATE TABLE Fact_Rent AS
SELECT RentID, CustomerID, VehicleID, StoreID, EmployeeID,
ReceiptNumber, ContractNumber, Price, Insurance, Discount_Amount,
PaymentDate, StartDate, EndDate,
RentHours, RentMiles
FROM Rent
GROUP BY RentID, CustomerID, VehicleID, StoreID, EmployeeID;

-- Mjera Izlistana
SELECT * FROM Fact_Rent;

-- Upiti
SELECT F.RentID,
C.FirstName, C.LastName, V.ModelName, S.StoreName, E.Position, E.HireDate, F.Price, F.Insurance,
F.Discount_Amount, F.PaymentDate, F.StartDate, F.EndDate, V.Color
FROM Fact_Rent F
JOIN Dim_Customer C ON F.CustomerID = C.CustomerID
JOIN Dim_Vehicle V ON F.VehicleID = V.VehicleID
JOIN Dim_Store S ON F.StoreID = S.StoreID
JOIN Dim_Employee E ON F.EmployeeID = E.EmployeeID
ORDER BY Color;

SELECT V.BrandName, V.ModelName AS Model, F.Price
FROM Dim_Vehicle AS V, Fact_Rent AS F
WHERE F.VehicleID = V.VehicleID
ORDER BY F.Price desc;

SELECT SUM(Price) AS TotalPrice FROM Fact_Rent, Dim_Date
WHERE Fact_Rent.StartDate=Dim_Date.Date AND Dim_Date.Day<10;

SELECT Dim_Customer.FirstName, Dim_Customer.LastName FROM Fact_Rent, Dim_Customer
WHERE Fact_Rent.Price>200
AND Fact_Rent.CustomerID=Dim_Customer.CustomerID;

SELECT Dim_Vehicle.LicensePlate FROM Fact_Rent, Dim_Vehicle
WHERE Fact_Rent.RentMiles>200
AND Dim_Vehicle.VehicleID=Fact_Rent.VehicleID;

SELECT Dim_Store.StoreName, Dim_Store.LocationName FROM Fact_Rent, Dim_Store
WHERE Fact_Rent.Price>300
AND Dim_Store.StoreID=Fact_Rent.StoreID;