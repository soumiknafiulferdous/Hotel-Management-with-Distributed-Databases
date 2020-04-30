set serveroutput on;

create or replace procedure befores
is

	rtype RoomDetails1.roomtype%TYPE;
	rate RoomDetails1.roomrate%TYPE;
	amo Bill1.amount%TYPE;
	
	cursor cur1 is 	
	(SELECT roomtype,roomrate,amount FROM  RoomDetails1@site_link1  MI INNER JOIN Bill1@site_link1  O ON MI.roomno = O.roomno  WHERE O.paymentstatus = 'Done');      					   

begin

	open cur1;
	loop
		fetch cur1 into rtype,rate,amo;
		exit when cur1%notFound;
		dbms_output.put_line('  Item_Type: '|| rtype|| ', roomrate '|| rate ||',amount'||amo);
		
	end loop;
	close cur1;
end befores;
/

create or replace procedure afters
is
	
	rtype RoomDetails1.roomtype%TYPE;
	rrate RoomDetails1.roomrate%TYPE;
	amo Bill1.amount%TYPE;

	
	cursor cur2 is 	
	(WITH sem as
	(SELECT * FROM RoomDetails1@site_link1 WHERE EXISTS ( SELECT * FROM ( SELECT roomno FROM
	Bill1@site_link1) odr WHERE RoomDetails1.roomno = odr.roomno))
	SELECT sem.roomno,sem.roomrate,amount FROM sem INNER JOIN
	Bill1 ON sem.roomno = Bill1.roomno WHERE Bill1.paymentstatus = 'Done');	
	
begin
	open cur2;	
		loop
		fetch cur2 into rtype,rate,amo;
		exit when cur2%notFound;
		dbms_output.put_line('  Item_Type: '|| rtype|| ', roomrate '|| rate ||',amount'||amo);
		
	end loop;
	close cur2;	
end afters;
/

begin
	dbms_output.put_line('BEFORE SEMIJOIN:');
	dbms_output.put_line('-----------------');
	befores;
	dbms_output.put_line('-------------------------------------------');
	dbms_output.put_line('AFTER SEMIJOIN:');
	dbms_output.put_line('------------------');
	afters;
	
end;
/