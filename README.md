# Hotel Management with Distributed Databases

## Introduction

Travelling in different places is so easy if we can book the perfect hotel and it will be great when we can book them staying at our home. It can be possible through the hotel website. Managing a hotel is a true 24 hours a day, 7 days a week operation. Managing daily responsibilities, team members, operational performance and the guest experience is a complex balancing act that requires great attention to detail, organization and flexibility. Web-based technology, from personal computing programs to online data storage, has greatly reduced the cost of developing, deploying and maintaining the software and systems that individuals and businesses use daily. That’s why we choose it to make the management system easier. Here we tried to make a hotel website using Distributed Database System. The hotel has two branches in Sylhet and in Dhaka. We tried to make the system smoother and user friendly.

## Project Description

Hotel management system is a management system to provide service facility to hotel’s employee and also to the customers. The hotel management system gives all the information regarding the check in or check out facilities of the customer. This hotel management system can be used by employees in a hotel to handle the clients, their bookings and can help them easily find free rooms or booking rooms. The services that are provided is room booking, food ordering management by the employee through the system, customer information management and employee information management, food information managementt and room information management.

It is very common to use a centralized database in a hotel. But some hotels have many branches in different places, cities or countries. So, it is necessary to have a distributed database management system to manage and look over the whole database management system from one server. Distributed database management system makes operation faster to operate in a particular location. It also makes the system easier. The distributed database can have the data arranged according to different levels of transparency i.e. data with different transparency levels can be stored at different locations. So, we develop a distributed database management system for hotel.


## Database Link 
I have created a virtual PC through Oracle VM Virtualbox. We have established a connection between the main PC and the virtual one through a link.
Here the Virtualbox is considered as the host or server and the laptop is considered as site. The tables of the project are run in the site and then accessed via a site link connection. The main PC is the host from where the tables of the site are accessed.
The site link is created using this following code:

## Database Tables (Global Schema)

1. Customer (c_id, name, mobile, email, date_of_birth, nationality, city)
2. RoomDetails (roomNo, roomType, roomRate)
3. Reservation (rsrv_no, c_id, roomNo, checkin, checkout, city)
4. Employee (Emp_id, name, cur_address, dutyHour, roomNo)
5. Food (foodNo, Type, name, rate)
6. Bill (bill_id, c_id, roomNo, amount, paymentStatus)

## Fragmentation Schema

Site1:

1. Customer1 = SL city= 'Dhaka' PJ c_id, name, mobile, email, date_of_birth, nationality, city (Customer)
2. RoomDetails1 = SL roomType = ‘Luxurious’ PJ roomNo, roomType, roomRate (RoomDetails)
3. Reservation1 = SL city = ‘Dhaka’ PJ rsrv_no, c_id, roomNo, checkin, checkout, city (Reservation)
4. Employee1 = SL cur_address = 'Dhaka' PJ Emp_id, name, cur_address, dutyHour, roomNo (Employee)
5. Food1 = SL type = ‘Chinese’ PJ foodNo, type, name, rate (Food)
6. Bill1 = Bill SJ c_id = c_id Customer1

Site2:

1. Customer2 = SL city= 'Sylhet' PJ c_id, name, mobile, email, date_of_birth, nationality, city (Customer)
2. RoomDetails2 = SL roomType = ‘Standard’ PJ roomNo, roomType, roomRate (RoomDetails)
3. Reservation2 = SL city = ‘Sylhet’ PJ rsrv_no, c_id, roomNo, checkin, checkout, city (Reservation)
4. Employee2 = SL cur_address = 'Sylhet' PJ Emp_id, name, cur_address, dutyHour, roomNo (Employee)
5. Food2 = SL type = ‘Bangla’ PJ foodNo, type, name, rate (Food)
6. Bill2 = Bill SJ c_id = c_id Customer2

## Functions and Procedures

Four functions and two procedures are created for the project. The usefulness and name of the procedures are given below:

Function: 
1. func_customer_mobile1: Displays the mobile number of the customer.

Procedure:
1. RoomDetails: . Displays the details information of the rooms.

## Semi-Join program

Semi-join program is more profitable than natural join. In our project, semi-join program is implemented and proved that it’s superior.

As example:

For joining RoomDetails and Bill1 in site of Bill1:

Using semi-join would be more profitable here than bringing all data from table RoomDetails to site of Bill2.

## Operator Tree

An internal representation of the query is created such as a query tree or query graph. We made two operator trees for our project. I made one of them. Then I derived a fragmentation query from there.

My operator tree query and fragmented query:

Q2: PJ roomNo, bill_id, amount (SL roomType = ‘Standared” (RoomDetails JN roomNo = roomNo Bill))

## Fragmented Query

QF: PJ roomNo, bill_id, amount ((PJ bill_id, roomNo (Bill1)) JN roomNo = roomNo (PJ roomNo, roomType SL roomType = ‘Standared” (RoomDetails1)))

## Conclusion

Making the hotel database distributed can lead to a very good output in the hotel management system. The hotel has a central database and it is distributed into multiple sites for the multiple branches. Than this will make the owner to access different information from different sites and look over the whole database management system from one server.
