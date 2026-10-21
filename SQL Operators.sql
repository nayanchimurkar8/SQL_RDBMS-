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
 
 
/*Aggregate Funcation*/
/*COUNT,SUM,AVG,MIN,MAX*/
SELECT COUNT(empid) from employee where dept='Finance';
SELECT Min(Exprience) from employee;
SELECT max(Exprience) from employee;
SELECT Sum(Exprience) from employee;
SELECT avg(Exprience) as emp_exp from employee;
select * from employee;

/* GROUP BY Clause 
set of rows int subgroup depending on column or expression values.
The GROUP BY Clause is used with aggregate function such as SUM,AVG,MAX,MIN,AND COUNT.*/

-- FIND THE DEPT WISE employee count 
select dept,count(*)as employee_count from employee group by dept;
select role,count(*)as employee_count from employee group by role;

  -- Find the Gender wise employee count
select Gender,count(*)as employee_count from employee group by Gender;

/* HAVING Clause - Each group produced by the GROUP BY clausw is evaluated by the having clause,and if the result is true,
the row is include in the result set*/
/*The HAVING*/

select dept,sum(Exprience)as total_expriance from employee group by dept 
HAVING total_expriance>= 1 and total_expriance<=4; 

/*Fetch department wise employee count using having clause and sort the data*/
select dept,count(empid) from employee group by dept having count(empid)>2 order by count(empid);
 select dept,sum(exprience) as total_exprience from employee group by dept having total_exprience>=2 or total_exprience<=4;
  


 
