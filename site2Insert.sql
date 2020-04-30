insert into Customer2 values(1, 'Tom', 123, 'tom@gmail.com', '9-Oct-1995', 'Bangladeshi', 'Sylhet');
insert into Customer2 values(2, 'Jerry', 234, 'jerry@gmail.com', '11-jan-1990', 'American', 'Sylhet');
insert into Customer2 values(3, 'Mina', 567, 'mina@gmail.com', '21-Dec-1991', 'Bangladeshi', 'Sylhet');

insert into Admin2 values(1, 'Saif', 'Sylhet', 'saif@gmail.com', 208);
insert into Admin2 values(2, 'Soumik', 'Sylhet', 'soumik@gmail.com', 694);

insert into RoomDetails2 values(1, 'Standard', 4000);
insert into RoomDetails2 values(2, 'Standard', 6000);
insert into RoomDetails2 values(3, 'Standard', 6000);
insert into RoomDetails2 values(4, 'Standard', 6000);

insert into Reservation2 values(1, 2, 2, '1-Jan-2019', '6-Jan-2019','Sylhet');
insert into Reservation2 values(2, 3, 1, '3-March-2019', '6-March-2019','Sylhet');


insert into Employee2 values(1, 'Rahima','Sylhet', '8am-2pm', 2);
insert into Employee2 values(2, 'Jabbar', 'Sylhet','2am-8am', 1);

insert into Food2 values(1, 'Bangla', 'onthon', 300);
insert into Food2 values(2, 'Bangla', 'soup', 400);

insert into Bill2 values(1, 2, 4, 10300, 'Done');
insert into Bill2 values(2, 3, 1, 25000, 'Done');
insert into Bill2 values(3, 2, 3, 15200, 'Done');
insert into Bill2 values(4, 1, 2, 30000, 'Not Done');

commit;