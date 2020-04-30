insert into Customer1 values(1, 'Tom', 123, 'tom@gmail.com', '9-Oct-1995', 'Bangladeshi', 'Dhaka');
insert into Customer1 values(2, 'Jerry', 234, 'jerry@gmail.com', '11-jan-1990', 'American', 'Dhaka');
insert into Customer1 values(3, 'Mina', 567, 'mina@gmail.com', '21-Dec-1991', 'Bangladeshi', 'Dhaka');

insert into RoomDetails1 values(1, 'Luxurious', 14000);
insert into RoomDetails1 values(2, 'Luxurious', 16000);
insert into RoomDetails1 values(3, 'Luxurious', 16000);
insert into RoomDetails1 values(4, 'Luxurious', 16000);

insert into Reservation1 values(1, 2, 2, '1-Jan-2019', '6-Jan-2019','Dhaka');
insert into Reservation1 values(2, 3, 1, '3-March-2019', '6-March-2019','Dhaka');


insert into Employee1 values(1, 'Rahim','Dhaka', '8am-2pm', 2);
insert into Employee1 values(2, 'Jabbar', 'Dhaka','2am-8am', 1);

insert into Food1 values(1, 'Chinese', 'onthon', 300);
insert into Food1 values(2, 'Chinese', 'soup', 400);

insert into Bill1 values(1, 2, 4, 10300, 'Done');
insert into Bill1 values(2, 3, 1, 25000, 'Done');
insert into Bill1 values(3, 2, 3, 15200, 'Done');
insert into Bill1 values(4, 1, 2, 30000, 'Not Done');

commit;