 /*filtering data from tables*/
  /* where SELECT DISTINCT , AND, OR,NOT,IN,NOT IN, BETWEEN, LIKE, LIMIT, IS NULL*/
create database organization;
create table employee(empid int not null primary key,First_name varchar(10),Last_name varchar(15),gender char,Role varchar(20),Dept varchar(15),Manager_id varchar(10));
desc employee;
INSERT INTO employee
(empid, First_name, Last_name, gender, Role, Dept, Manager_id)
VALUES
(1, 'Nayan', 'Chimurkar', 'M', 'Developer', 'IT', '101'),
(2, 'Rahul', 'Patil', 'M', 'Tester', 'IT', '101'),
(3, 'Priya', 'Sharma', 'F', 'HR Executive', 'HR', '102'),
(4, 'Sneha', 'Desai', 'F', 'Analyst', 'Finance', '103'),
(5, 'Amit', 'Joshi', 'M', 'Manager', 'Sales', '104');
select * from employee;
select distinct Dept from employee order by Dept;
select distinct Role from employee order by Role;
 /*AND operator*/
select *from employee where Role='Analyst' and dept='Finance';

 /*OR Operator*/
select  *from employee where Role='Analyst' or dept='HR';
 
  /*IN Operator*/
select  *from employee where Role in('Analyst','Manager');
 
 /*NOT IN Operator*/
select  *from employee where Role Not in('Analyst','Manager');

 /*BETWEEN Operator*/
 alter table employee add column Exprience int;
 update employee set  Exprience = 4 where empid=1;
 update employee set  Exprience = 3 where empid=2;
 update employee set  Exprience = 4 where empid=3;
 update employee set  Exprience = 5 where empid=4;
 update employee set  Exprience = 2 where empid=5;
select * from employee where Exprience between 1 and 3;
select * from employee where Exprience =4 or Exprience= 3;

 /* LIKE Operator */
select * from employee where Last_name like 'C%';

/*LIMIT Operators*/
select * from employee order by exprience limit 5;

 /* IS NULL Operator*/
 insert  into employee values(7,'Asta','Magic','M','President','HR',' ',Null);
 select * from employee;
 select * from employee where Manager_id is null; 
 
 
