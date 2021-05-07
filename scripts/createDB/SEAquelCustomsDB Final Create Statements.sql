DROP DATABASE IF EXISTS seaquelCustoms;

CREATE DATABASE seaquelCustoms;
USE seaquelCustoms;
 

CREATE TABLE Supplier(
	supplierID INT NOT NULL,
	firstName VARCHAR(25), 
	lastName VARCHAR(25),
	phone VARCHAR(15),
	email VARCHAR(50),
	PRIMARY KEY(supplierID));
    
CREATE TABLE Employee(
	employeeID INT NOT NULL,
	firstName VARCHAR(25), 
	lastName VARCHAR(25),
	email VARCHAR(50),
	phone VARCHAR(15),
	hoursWorked INT,
	hourlyRate DECIMAL(5,2),
	PRIMARY KEY(employeeID));
    
    CREATE TABLE Customer(
	customerID INT NOT NULL,
	firstName VARCHAR(25), 
	lastName VARCHAR(25),
	email VARCHAR(50),
	phone VARCHAR(15),
	custType VARCHAR(25),
	PRIMARY KEY(customerID));
    
CREATE TABLE Shaper(
	shaperID INT NOT NULL,
	firstName VARCHAR(25),
	lastName VARCHAR(25),
	startDate DATE,
	phone VARCHAR(15),
	hoursWorked DECIMAL(10,2),
	hourlyRate DECIMAL(5,2),
	PRIMARY KEY(shaperID));

CREATE TABLE Material(
	materialID INT NOT NULL,
	supplierID INT NOT NULL, 
	unitsBought INT,
	materialName VARCHAR(75),
	materialDesc VARCHAR(75),
	materialCost DECIMAL(10,2),
	materialType VARCHAR(25),
	unitMeasure VARCHAR(25),
	PRIMARY KEY(materialID),
	CONSTRAINT fk_supplier_has_material FOREIGN KEY(supplierID)
	REFERENCES supplier(supplierID));


CREATE TABLE Transaction(
	transactionID INT NOT NULL,
	customerID INT NOT NULL, 
	transtime TIME,
	employeeID INT NOT NULL,
	transDate DATE,
	paymentType VARCHAR(25),
	PRIMARY KEY(transactionID),
	CONSTRAINT fk_customer_has_transaction FOREIGN KEY(customerID)
	REFERENCES customer(customerID),
	CONSTRAINT fk_employee_has_transaction FOREIGN KEY(employeeID)
	REFERENCES employee(employeeID));


CREATE TABLE Surfboards(
	boardID INT NOT NULL,
	transactionID INT NOT NULL, 
	length INT,
	width INT,
	height INT,
	design VARCHAR(25),
	PRIMARY KEY(boardID),
	CONSTRAINT fk_transaction_for_surfboards FOREIGN KEY(transactionID)
	REFERENCES transaction(transactionID));

CREATE TABLE Shape(
	shaperID INT NOT NULL,
	boardID INT NOT NULL,
	hoursSpent DECIMAL(10,2),
	PRIMARY KEY(shaperID, boardID), 
	CONSTRAINT fk_shaperID_of_shape FOREIGN KEY(shaperID)
	REFERENCES shaper(shaperID),
	CONSTRAINT fk_boardID_has_shape FOREIGN KEY(boardID)
	REFERENCES surfboards(boardID));
    
CREATE TABLE Creation(
	materialID INT NOT NULL,
	boardID INT NOT NULL,
	quantityUsed DECIMAL(10,2),
	PRIMARY KEY(materialID, boardID), 
	CONSTRAINT fk_material_for_creation FOREIGN KEY(materialID)
	REFERENCES material(materialID),
	CONSTRAINT fk_boardID_of_creation FOREIGN KEY(boardID)
	REFERENCES surfboards(boardID));



