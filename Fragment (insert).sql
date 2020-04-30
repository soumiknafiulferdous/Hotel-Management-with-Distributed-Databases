set serveroutput on;

declare

--for Customer table

cursor  c_cur is
select c_id,name,mobile,email,date_of_birth,nationality,city from Customer;

cus_id number(2);
cus_name varchar2(6);
cus_mobile integer;
cus_email varchar2(16);
cus_date_of_birth date;
cus_nationality varchar2(12);
cus_city varchar2(10);

--for Admin table

cursor a_cur is
select admin_id,name,address,email,mobile_no from Admin;

a_id number(10);
a_name varchar2(6);
a_address varchar2(20);
a_email varchar2(20);
a_mobileno integer;

--for RoomDetails table

cursor  r_cur is
select roomNo,roomType,roomRate,review from RoomDetails;

r_no number(20);
r_type varchar2(30);
r_rate integer;
r_review varchar2(20);


--for Reservation table

cursor re_cur is
select rsrv_no,c_id,roomNo,checkin,checkout from Reservation;

re_no number(10);
re_cid number(5);
re_roomno number(20); 
re_checkin date;
re_checkout date;


--for Employee table

cursor e_cur is
select Emp_id,name,dutyHour,roomNo from Employee;

e_id number(20);
e_name varchar2(6);
e_duty varchar2(20);
e_roomno number(20);

--for Food table

cursor f_cur is
select foodNo, type, name, rate from Food;

f_no number(20);
f_type varchar2(20);
f_name varchar2(10);
f_rate integer;

--for Bill table

cursor b_cur is
select bill_id, c_id, roomNo, amount,paymentStatus from Bill;

b_id number(20);
b_cid number(5);
b_roomno number(20); 
b_amount integer;
b_pstatus varchar2(20);

begin
	open c_cur;
	loop
		fetch c_cur into cus_id,cus_name,cus_mobile,cus_email,cus_date_of_birth,cus_nationality,cus_city;
		exit when c_cur%notFound;
		
		IF cus_city = 'Sylhet'
		THEN insert into Customer@site_link values(cus_id,cus_name,cus_mobile,cus_email,cus_date_of_birth,cus_nationality,cus_city);
		
		--ELSE 
		--insert into Customer2@site_link2 values(cus_id,cus_name,cus_mobile,cus_email,cus_date_of_birth,cus_nationality,cus_city);
		
		END IF;
	end loop;
	close c_cur;
	
	open a_cur;
	loop
		fetch a_cur into a_id,a_name,a_address,a_email,a_mobileno;
		exit when a_cur%notFound;
		
		IF a_name = 'soumik'
		THEN insert into Admin1@site_link values(a_id,a_name,a_address,a_email,a_mobileno);
		
		--ELSE
		--insert into Admin2@site_link2 values(a_id,a_name,a_address,a_email,a_mobileno);
		
		END IF;
	end loop;
	close a_cur;
	
	open r_cur;
	loop
		fetch r_cur into r_no,r_type,r_rate,r_review;
		exit when r_cur%notFound;
		
		IF r_rate > 12000 
		THEN insert into RoomDetails1@site_link values(r_no,r_type,r_rate,r_review);
		
		--ELSE
		--insert into RoomDetails2@site_link2 values(r_no,r_type,r_rate,r_review);
		
		END IF;
	end loop;
	close r_cur;

	open re_cur;
	loop
		fetch re_cur into re_no,re_cid,re_roomno,re_checkin,re_checkout;
		exit when re_cur%notFound;
		
		IF re_cid = 4
		THEN insert into Reservation1@site_link values(re_no,re_cid,re_roomno,re_checkin,re_checkout);
		
		--ELSE 
	        --insert into Reservation2@site_link2 values(re_no,re_cid,re_roomno,re_checkin,re_checkout);
		
		END IF;
	end loop;
	close re_cur;

	open e_cur;
	loop
		fetch e_cur into e_id,e_name,e_duty,e_roomno;
		exit when e_cur%notFound;
		
		IF e_name = 'Rahim'  
		THEN insert into Employee1@site_link values(e_id,e_name,e_duty,e_roomno);
		
		--ELSE
		--insert into Employee2@site_link2 values(e_id,e_name,e_duty,e_roomno);
		
		END IF;
	end loop;
	close e_cur;

	open f_cur;
	loop
		fetch f_cur into f_no,f_type,f_name,f_rate;
		exit when f_cur%notFound;
		
		IF f_rate >= 400 
		THEN insert into Food1@site_link values(f_no,f_type,f_name,f_rate);
		
		--ELSE
		--insert into Food2@site_link2 values(f_no,f_type,f_name,f_rate);
		
		END IF;
	end loop;
	close f_cur;

	open b_cur;
	loop
		fetch b_cur into b_id,b_cid,b_roomno,b_amount,b_pstatus;
		exit when b_cur%notFound;
		
		IF b_amount >=25000
		THEN insert into Bill1@site_link values(b_id,b_cid,b_roomno,b_amount,b_pstatus);
		
		--ELSE
		--insert into Bill2@site_link2 values(b_id,b_cid,b_roomno,b_amount,b_pstatus);
		
		END IF;
	end loop;
	close b_cur;
	
end;
/

commit;



