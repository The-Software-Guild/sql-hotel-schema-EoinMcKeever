DROP DATABASE IF EXISTS EoinMcKeeverHotelDB;
CREATE DATABASE EoinMcKeeverHotelDB;
USE EoinMcKeeverHotelDB;

CREATE TABLE Guest (
	GuestId INT AUTO_INCREMENT,
	GuestFirstName VARCHAR(30) NOT NULL,
	GuestLastName VARCHAR(30) NOT NULL,
	Address VARCHAR(100) NOT NULL,
	City VARCHAR(30),
	State VARCHAR(30) NOT NULL,
	Zip VARCHAR(7) NOT NULL,
	GuestPhoneNumber VARCHAR(15) NOT NULL,
	CONSTRAINT pk_GuestId PRIMARY KEY (GuestId)	
);

CREATE TABLE Amenities (
	AmenitiesId INT AUTO_INCREMENT,
	Microwave BOOLEAN NOT NULL,
	Refrigerator BOOLEAN NOT NULL,
	Jacuzzi BOOLEAN NOT NULL,
	Oven BOOLEAN NOT NULL,
	CONSTRAINT pk_AmenitiesId PRIMARY KEY (AmenitiesId)		
);


CREATE TABLE Room (
	RoomNumber INT,
	AmenitiesId INT NOT NULL,
	Type ENUM('Single', 'Double', 'Suite'),
	ADAAccessible BOOLEAN NOT NULL,
	StandardOccupancy INT NOT NULL,
	MaximumOccupancy INT NOT NULL,
	BasePrice DECIMAL(8,2) NOT NULL,
	ExtraPersonCost INT,
	CONSTRAINT pk_RoomNumber PRIMARY KEY (RoomNumber),
	CONSTRAINT fk_AmenitiesId FOREIGN KEY (AmenitiesId) REFERENCES Amenities(AmenitiesId)
);

CREATE TABLE Reservation (
	ReservationId INT AUTO_INCREMENT,
	RoomNumber INT NOT NULL,
	GuestId INT NOT NULL,
	Adults INT NOT NULL,
	Children INT NOT NULL,
	StartDate DATE NOT NULL,
	EndDate DATE NOT NULL,
	TotalRoomCost DECIMAL(8,2),
	CONSTRAINT pk_ReservationId PRIMARY KEY (ReservationId),
	CONSTRAINT fk_RoomNumber FOREIGN KEY (RoomNumber) REFERENCES Room(RoomNumber),
	CONSTRAINT fk_GuestId FOREIGN KEY (GuestId) REFERENCES Guest(GuestId)		
);