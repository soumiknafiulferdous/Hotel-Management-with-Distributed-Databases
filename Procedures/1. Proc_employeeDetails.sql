create or replace procedure showallEmployee
is

cursor t is
select name, cur_address, dutyHour, roomNo from employee1@site_link
union 
select name, cur_address, dutyHour, roomNo from employee2@site_link2;

ther employee1.name%Type;
ther1 employee1.cur_address%Type;
ther2 employee1.dutyHour%Type;
ther3 employee1.roomNo%Type;

begin
    open t;		
		loop
			fetch t into ther,ther1,ther2,ther3;
			exit when t%notfound;
			dbms_output.put_line(ther||' '||ther1||' '||ther2||' '||ther3); 
		end loop;
	close t;

end;
/

SET SERVEROUTPUT ON;
BEGIN
showallEmployee;
END;
/