set serveroutput on;

create or replace procedure without1

is
   
	bil bill1.bill_id%TYPE;
	amo bill1.amount%TYPE;
	
	cursor curSim is ( SELECT  bill_id, amount From Bill1@site_link1 M inner join RoomDetails1@site_link1 O On M.roomno=O.roomno  WHERE  roomtype = 'Luxurious') ;
	


begin
	open curSim;
	loop
		fetch curSim into  bil, amo;
		exit when curSim%notFound;
		dbms_output.put_line('Item_Name: '||bil||' '||amo);
	end loop;
	close curSim;
	--null;
end without1;
/
create or replace procedure withSimplify
is
	bil bill1.bill_id%TYPE;
	amo bill1.amount%TYPE;
	
	
    cursor cursim is select bill_id,amount from Bill1@site_link1 inner join (select roomno from roomdetails1@site_link1 where roomtype='Luxurious')does on 
does.roomno=Bill1.roomno;
	


begin
	open curSim;
	loop
		fetch curSim into  bil, amo;
		exit when curSim%notFound;
		dbms_output.put_line('Item_Name: '||bil||' '||amo);
	end loop;
	close curSim;
	--null;
	
end withSimplify;
/




begin
	dbms_output.put_line('BEFORE SIMPLIFY:');
	dbms_output.put_line('-----------------');
	without1;
	dbms_output.put_line('-------------------------------------------');
	dbms_output.put_line('AFTER SIMPLIFY:');
	dbms_output.put_line('------------------');
	withSimplify;
	
end;
/