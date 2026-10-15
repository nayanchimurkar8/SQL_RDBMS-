create database User;
show databases;
use user;
create table customer (Custid int,custname varchar(15),City varchar(10),product varchar(20),Price int);
desc customer;
insert into customer values (101,'Nayan','pune', 'Laptop','70000');
insert into customer values (102,'Harsh','pune','laptop','65000');
insert into customer values (103,'ABC','pune','laptop','66000');
insert into customer values (104,'Arpit','nagpur','laptop','66000');


select *from customer;
alter table customer add primary key (Custid);

select Custid,custname,city from customer;
select * from customer where Custid = 101;
select * from customer where Custid = 101 or Custid = 100;

create table CloneTable as select *from Customer;
select * from CloneTable;
drop table CloneTable;

select custname , city from customer;
select *from customer where Custid=101;
select * from customer where city='nagpur';

/*sorting data using order by single column*/
select * from customer order by price,city;


select * from customer order by city desc,price asc;

 /*single-row functions*/
 /*Case conversion functions*/
 select upper (custname),lower(product) from customer where Custid<103;
 
 select upper (custname),lower(product) from customer;
 
alter table customer add column lastname varchar(15);
update customer set Lastname ='Sharma' where Custid=101; 
update customer set Lastname ='Varma' where Custid=102;
update customer set Lastname ='Rao' where Custid=103; 

/*concat two column*/
select concat(custname,' ', lastname) from customer ;
select concat(custname,' ', lastname) as FullName from customer;

/*Use of SUBSTR and INSTR functions*/
select* from customer;
select substr(custname,1,5) from customer;
select substr(custname,1,1) from customer;
select substr(custname,1,0) from customer;

/*Substring query*/
select instr(custname,'a') as position from customer;

insert into customer value (4, 'Aryan','Chandrapur','laptop','50000','Varma');
select substr(custname,1,5), instr(custname,'a') as instring from customer;
select substr(custname,1,3), instr(custname,'a') from customer where Custid<3;
select substr(custname,1,3)as Name, instr(custname,'a') as number from customer where Custid<3;