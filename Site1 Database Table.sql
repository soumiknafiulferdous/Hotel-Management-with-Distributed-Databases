clear screen;

drop table Customer cascade constraints;
drop table Customer1 cascade constraints;
drop table RoomDetails1 cascade constraints;
drop table Reservation1 cascade constraints;
drop table Employee1 cascade constraints;
drop table Food1 cascade constraints;
drop table Bill1 cascade constraints;

create table Customer
(c_id number(2),
name varchar2(6),
mobile integer,
email varchar2(16),
date_of_birth date,
nationality varchar2(12),
city varchar2(10),
primary key(c_id));

create table Customer1
(c_id number(2),
name varchar2(6),
mobile integer,
email varchar2(16),
date_of_birth date,
nationality varchar2(12),
city varchar2(10),
primary key(c_id));


create table RoomDetails1
(roomNo number(20),
roomType varchar2(30),
roomRate integer,
PRIMARY KEY(roomNo));

create table Reservation1
(rsrv_no number(10),
c_id number(5),
roomNo number(20), 
checkin date,
checkout date,
city varchar2(10), 
PRIMARY KEY(rsrv_no),
Foreign KEY(c_id) references Customer1(c_id),
Foreign KEY(roomNo) references RoomDetails1(roomNo));

create table Employee1
(Emp_id number(20),
name varchar2(20),
cur_address varchar2(20),
dutyHour varchar2(20),
roomNo number(20),
PRIMARY KEY(Emp_id),
Foreign KEY(roomNo) references RoomDetails1(roomNo));

create table Food1
(foodNo number(20),
type varchar2(20),
name varchar2(10),
rate integer,
PRIMARY KEY(foodNo));

create table Bill1
(bill_id number(20),
c_id number(5),
roomNo number(20), 
amount integer,
paymentStatus varchar2(20),
PRIMARY KEY(bill_id),
Foreign KEY(c_id) references Customer1(c_id),
Foreign KEY(roomNo) references RoomDetails1(roomNo));



commit;

select * from Customer1;
select * from RoomDetails1;
select * from Reservation1;
select * from Bill1;
select * from Employee1;
select * from Food1;