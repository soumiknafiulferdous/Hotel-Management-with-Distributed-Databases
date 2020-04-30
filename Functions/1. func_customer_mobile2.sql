CREATE OR REPLACE FUNCTION mobile_show(cuid IN customer2.c_id%TYPE)

RETURN integer
IS
mobshow int;

BEGIN

  select mobile into mobshow 
  from customer2 where c_id = cuid;

  RETURN mobshow;

END mobile_show;
/

SET SERVEROUTPUT ON;
BEGIN
DBMS_OUTPUT.PUT_LINE(mobile_show(2));
END;
/