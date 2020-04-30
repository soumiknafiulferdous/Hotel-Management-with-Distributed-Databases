create or replace procedure showRoomDetails
is

cursor t is
select roomType, roomRate from RoomDetails1@site_link
union 
select roomType, roomRate from RoomDetails2@site_link2;


ther RoomDetails1.roomType%Type;
ther1 RoomDetails1.roomRate%Type;

begin
    open t;		
		loop
			fetch t into ther,ther1;
			exit when t%notfound;
			dbms_output.put_line(ther||' '||ther1); 
		end loop;
	close t;

end;
/

SET SERVEROUTPUT ON;
BEGIN
showRoomDetails;
END;
/