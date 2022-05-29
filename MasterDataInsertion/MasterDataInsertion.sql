insert into role values(1,'Admin');
insert into role values(2,'Employee');

select * from role;

insert into user values(11,'Prashanth','1234',1);
insert into user values(12,'Ramesh','1212',1);
insert into user values(13,'Megharaj','4567',2);
insert into user values(14,'Supriya','9810',2);
insert into user values(15,'Yogitha','4321',2);
insert into user values(16,'Praveen','9876',2);

select * from user;


insert into request_type values(1,'Job request');
insert into request_type values(2,'Hardware request');
insert into request_type values(3,'Software request');

select * from request_type;

insert into location values(111,'BLR-SER1');
insert into location values(222,'BLR-SER2');
insert into location values(333,'BLR-BTR1');
insert into location values(444,'BLR-BTR1');
insert into location values(555,'CHN-PGR1');
insert into location values(666,'CHN-PGR2');
insert into location values(777,'CHN-PGR3');

select * from location;

insert into department values(21,'Training');
insert into department values(22,'HR');
insert into department values(23,'Infrastructure');
insert into department values(24,'Delivery');


select * from department;

delete from department
where DEPT_ID in (1,2);

