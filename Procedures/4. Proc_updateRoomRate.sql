    CREATE OR REPLACE PROCEDURE updateRoomRate(id RoomDetails1.roomno%type, rate RoomDetails1.RoomRate%type)
IS
		BEGIN
		  Update RoomDetails1 set RoomRate = rate where roomno = id;
		  
		END updateRoomRate;
/


SET SERVEROUTPUT ON;
BEGIN
updateRoomRate(1,20000);
END;
/