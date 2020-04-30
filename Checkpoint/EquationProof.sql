set serveroutput on;

create or replace procedure proof_left_side
is
	s_name food1.name%TYPE;
	s_price food1.rate%TYPE;
	
	cursor cur is 
	
	((SELECT name,rate From food1@site_link1  WHERE rate >400 ) MINUS
	(SELECT name,rate From food2@site_link2  WHERE rate < 100));
	

begin
	open cur;
	loop
		fetch cur into s_name,s_price;
		exit when cur%notFound;
		dbms_output.put_line('Item_Name: '|| s_name || ',   Item_price: '|| s_price);
	end loop;
	close cur;
end proof_left_side;
/


create or replace procedure proof_right_side
is
s_name food1.name%TYPE;
	s_price food1.rate%TYPE;
	
	cursor cur is
	SELECT name,rate From 
	((SELECT name,rate From food1@site_link1 ) MINUS (SELECT name,rate From food2@site_link2 ))
	WHERE( rate > 400 );
	

begin
	open cur;
	loop
		fetch cur into s_name,s_price;
		exit when cur%notFound;
		dbms_output.put_line('Item_Name: '|| s_name || ',   Item_price: '|| s_price);
	end loop;
	close cur;
end proof_right_side;
/
	

begin
	dbms_output.put_line('[R:qR] DF [S:qS]:');
	dbms_output.put_line('-----------------');
	
	proof_left_side;
	dbms_output.put_line(
	'-------------------------------------------');
	dbms_output.put_line('[R DF S: qR ]:');
	dbms_output.put_line('------------------');
	proof_right_side;
	dbms_output.put_line('------------------');
	
end;
/