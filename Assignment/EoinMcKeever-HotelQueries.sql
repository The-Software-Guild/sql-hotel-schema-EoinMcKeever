USE EoinMcKeeverHotelDB;

SELECT ReservationId,RoomNumber,GuestFirstName, GuestLastName,Adults,children,startDate,EndDate FROM reservation
JOIN guest ON reservation.GuestId = guest.GuestId
WHERE EndDate LIKE '2023-07-%';

SELECT ReservationId,reservation.RoomNumber, GuestId,Adults,children,startDate,EndDate FROM reservation
JOIN room ON reservation.RoomNumber = room.RoomNumber
JOIN amenities ON room.AmenitiesId = amenities.AmenitiesId
WHERE jacuzzi = TRUE;



SELECT GuestFirstName,GuestLastName, room.RoomNumber, startDate, MaximumOccupancy FROM guest
JOIN reservation ON guest.GuestId = reservation.GuestId
JOIN room ON reservation.RoomNumber = room.RoomNumber
WHERE GuestFirstName= 'Mack' AND GuestLastName = 'Simmer';

SELECT reservation.RoomNumber, reservationId, TotalRoomCost FROM room
Left JOIN reservation ON room.RoomNumber = reservation.RoomNumber;

SELECT room.RoomNumber FROM room
JOIN Reservation ON room.RoomNumber = reservation.RoomNumber
WHERE room.maximumOccupancy > 3 AND reservation.EndDate LIKE '2023-04-%';

SELECT guest.GuestFirstName, guest.GuestLastName, COUNT(reservation.ReservationId) AS amountOfReservations FROM guest
JOIN reservation ON guest.GuestId = reservation.GuestId
GROUP BY (guest.GuestId)
ORDER BY amountOfReservations DESC, guest.GuestLastName;

SELECT * FROM guest;

SELECT guestFirstName, guestLastName , address, guestPhoneNumber FROM guest
WHERE GuestPhoneNumber LIKE '%(291) 553-0508%';












