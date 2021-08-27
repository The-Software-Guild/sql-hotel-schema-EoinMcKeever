USE EoinMcKeeverHotelDB;

LOAD DATA LOCAL INFILE 'C:/Users/WorkAccount/Data/E-Learning/SQL/Guest.csv'
INTO TABLE EoinMcKeeverHotelDB.Guest 
FIELDS TERMINATED BY ',';

LOAD DATA LOCAL INFILE 'C:/Users/WorkAccount/Data/E-Learning/SQL/Amenities.csv'
INTO TABLE EoinMcKeeverHotelDB.Amenities 
FIELDS TERMINATED BY ',';

LOAD DATA LOCAL INFILE 'C:/Users/WorkAccount/Data/E-Learning/SQL/Room.csv'
INTO TABLE EoinMcKeeverHotelDB.Room 
FIELDS TERMINATED BY ',';


LOAD DATA LOCAL INFILE 'C:/Users/WorkAccount/Data/E-Learning/SQL/Reservation.csv'
INTO TABLE EoinMcKeeverHotelDB.Reservation 
FIELDS TERMINATED BY ',';




DELETE FROM Reservation
WHERE GuestId  = 8;
DELETE FROM guest
WHERE GuestId  = 8;


-- one issue is I had to chnage the primary key of 201 to 0 in excel spreadsheet. It wouldn't import the first room 201. It imported 0 everytime. So I had to change foreign keys to 0 as well. Seems to be a bug.



SELECT * FROM guest;
SELECT * FROM Amenities;
SELECT * FROM Room;
SELECT * FROM Reservation;
