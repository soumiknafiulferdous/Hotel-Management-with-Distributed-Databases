CREATE OR REPLACE FUNCTION employ_room(rid IN RoomDetails1.roomNo%TYPE)

RETURN varchar2
IS
rm varchar2 (20);

BEGIN
  select count(emp_id) into rm from employee1 where roomno=rid;

  RETURN rm;

END;
/

SET SERVEROUTPUT ON;
BEGIN
DBMS_OUTPUT.PUT_LINE(employ_room(1));
END;
/