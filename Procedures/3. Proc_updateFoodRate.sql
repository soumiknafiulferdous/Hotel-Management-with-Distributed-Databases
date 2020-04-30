    CREATE OR REPLACE PROCEDURE updateFoodRate(id food1.foodno%type, rate food1.Rate%type)
IS
		BEGIN
		  Update food1 set Rate = rate where foodno = id;
		  
		END updateFoodRate;
/

SET SERVEROUTPUT ON;
BEGIN
updateFoodRate(1,310);
END;
/



