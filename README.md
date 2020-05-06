# Hotel Management with Distributed Databases

## Overview

Managing a hotel is a 24/7 job. It is very difficult to manage a hotel without a hotel management website if the hotel has several branches. Managing daily responsibilities, team members, operational performance and the guest experience is a complex job that requires great attention to details, organizing power and responsibility. Web-based technology, from personal computing programs to online data storage, has greatly reduced the cost of developing, deploying and maintaining the software and systems that individuals and businesses use everyday. That’s why, it is deicided to make the management system easier. Here, it is tried to make a hotel website using distributed database system. The hotel has two branches in Dhaka and Sylhet. The target is to make the system smoother and user friendly.

Making the hotel database distributed can have a positive impact in the hotel management system. The hotel has a central database and it is distributed into multiple sites for different branches. This allows the owner to access different information from different sites and look over the whole management system from one server.

## Description

Hotel management system aims to provide quality service facility to hotel’s employee and also to the customers. The hotel management system preserves all the information including check-in or check-out details of the customers. This hotel management system can be used by employees in a hotel to handle the clients, their bookings and can help them greatly to find empty rooms or booked rooms. The services that are provided are room booking, food ordering system by the employees, customer information management and employee information management, food information management and room information management.

It is very common to use a centralized database in a hotel. But some hotels have many branches in different places, cities or countries. So, it is necessary to have a distributed database management system to manage and look over the whole database from one place. Distributed database management system makes these operations faster to operate from a particular location. It also makes the database system easier to understand. The distributed database can have the data arranged according to different levels of transparency i.e. data with different transparency levels can be stored at different locations. So, a distributed database management system for hotel is developed.


## Database Link 
I have created a virtual PC through Oracle VM Virtualbox and established a connection between the main PC and the virtual one through a link.
Here the Virtualbox is considered as the host or server and the laptop is considered as site. The tables of the project are run in the site and then accessed via a site link connection. The main PC is the host from where the tables of the site are accessed.

## Database Tables (Global Schema)

1. Customer (c_id, name, mobile, email, date_of_birth, nationality, city)
2. RoomDetails (roomNo, roomType, roomRate)
3. Reservation (rsrv_no, c_id, roomNo, checkin, checkout, city)
4. Employee (Emp_id, name, cur_address, dutyHour, roomNo)
5. Food (foodNo, Type, name, rate)
6. Bill (bill_id, c_id, roomNo, amount, paymentStatus)

## Functions and Procedures

Three functions and four procedures are created for the project. The name and uses of them are given below:

Functions: 
1. func_customer_mobile1: Displays the mobile number of the customer.
2. func_emply_room1: Displays the empty room
3. func_nationality_show1: Displays the nationality of the customer.

Procedurse:
1. RoomDetails: Displays the details information of the rooms.
2. ShowAllEmployee: Displays the information of all employees.
3. UpdateFoodRate: Update the food price.
4. UpdateRoomRate: Update the room rent. 

## Semi-Join program

Semi-join program is more profitable than natural join here. In this project, semi-join program is implemented and it performs very well. For example, for joining RoomDetails and Bill1 in site of Bill1, using semi-join would be more profitable here than bringing all data from table RoomDetails to site of Bill2.

## Operator Tree

An internal representation of the query is created such as a query tree or query graph. I made two operator trees for the project. Then I derived a fragmentation query from that.
