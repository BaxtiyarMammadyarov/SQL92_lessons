use master;

Create Database Course_Db;
 
use Course_Db;

Create Schema  sql_groups;

Create Schema java_groups;

Create table students
					(id int,
					first_name char(30),
					last_name char(30),
					phone_number1 char(15),
					phone_number2 char(15),
					Student_Address char(40),
					group_name  char(10),
					);

Create table sql_groups.students
					(id int,
					first_name char(30),
					last_name char(30),
					phone_number1 char(15),
					phone_number2 char(15),
					Student_Address char(40),
					group_name  char(10),
					);

Create table java_groups.students
					(id int,
					first_name char(30),
					last_name char(30),
					phone_number1 char(15),
					phone_number2 char(15),
					Student_Address char(40),
					group_name  char(10),
					);

Create table Teachers
					(id int,
					first_name char(30),
					last_name char(30),
					phone_number1 char(15),
					phone_number2 char(15),
					Teachers_Address char(40),
					group_name  char(10),
					);

Create table sql_groups.Teachers
					(id int,
					first_name char(30),
					last_name char(30),
					phone_number1 char(15),
					phone_number2 char(15),
					Teacher_Address char(40),
					group_name  char(10),
					);

Create table java_groups.Teachers
					(id int,
					first_name char(30),
					last_name char(30),
					phone_number1 char(15),
					phone_number2 char(15),
					Teacher_Address char(40),
					group_name  char(10),
					);





insert into 
			students(id,first_name,last_name,phone_number1 ,phone_number2 ,Student_Address,group_name)
values    (1,'Mahir','Aliyev','050-444-55-33','055-444-55-33','Baki,Yasamal','sql001');

insert into 
			students(id,first_name,last_name,phone_number1 ,phone_number2 ,Student_Address,group_name)
values    (2,'Nüsrət','Vəliyev','050-333-55-33','055-333-55-33','Baki,Biməqədi','sql001'),
		  (3,'Nahid','Şükürov','050-676-55-33','055-676-55-33','Baki,Biməqədi','sql001'),
		  (4,'Aqil','Vəliyev','050-333-55-33','055-333-55-33','Baki,Biməqədi','Java001');


insert into 
			sql_groups.students(id,first_name,last_name,phone_number1 ,phone_number2 ,Student_Address,group_name)
values    (1,'Mahir','Aliyev','050-444-55-33','055-444-55-33','Baki,Yasamal','sql001');
insert into 
			sql_groups.students(id,first_name,last_name,phone_number1 ,phone_number2 ,Student_Address,group_name)
values    (2,'Nüsrət','Vəliyev','050-333-55-33','055-333-55-33','Baki,Biməqədi','sql001'),
          (3,'Nahid','Şükürov','050-676-55-33','055-676-55-33','Baki,Biməqədi','sql002');


insert into 
			java_groups.students(id,first_name,last_name,phone_number1 ,phone_number2 ,Student_Address,group_name)
values    (1,'Nahid','Zahidov','050-546-55-33','055-356-55-33','Baki,Yasamal','java001');
insert into 
			java_groups.students(id,first_name,last_name,phone_number1 ,phone_number2 ,Student_Address,group_name)
values    (2,'Qadir','Vəliyev','050-267-55-33','055-376-55-33','Baki,Nizami','java001'),
          (3,'Nahid','Zaidov','050-238-55-33','055-238-55-33','Baki,Biməqədi','java002');



select 
		s.id,
		s.first_name,
		s.last_name,
		s.phone_number1,
		s.phone_number1,
		s.Student_Address,
		s.group_name
from
		students s;
--where


select 
		ss.id,
		ss.first_name,
		ss.last_name,
		ss.phone_number1,
		ss.phone_number1,
		ss.Student_Address,
		ss.group_name
from
		sql_groups.students ss;
--where


select 
		ss.id,
		ss.first_name,
		ss.last_name,
		ss.phone_number1,
		ss.phone_number1,
		ss.Student_Address,
		ss.group_name
from
		sql_groups.students ss
where  
		ss.first_name='Nahid';


select 
		js.id,
		js.first_name,
		js.last_name,
		js.phone_number1,
		js.phone_number1,
		js.Student_Address,
		js.group_name
from
		java_groups.students js;
--where


select 
		js.id,
		js.first_name,
		js.last_name,
		js.phone_number1,
		js.phone_number1,
		js.Student_Address,
		js.group_name
from
		java_groups.students js
where  
		js.last_name='Zaidov';


USE MASTER;

Create Database Market_db;

use Market_db;

Create Schema hr;

Create Schema Sales;

Create table hr.Employees
						(employee_id int,
						first_name nvarchar(30),
						last_name nvarchar(30),
						Phone_number varchar(15),
						Email varchar(30),
						employee_type varchar(20),
						employee_status  varchar(15));

create table Sales.Product
						  (product_id int,
						  product_name nvarchar(20),
						  product_type nvarchar(20),
						  product_price decimal(4,2),
						  product_cost  decimal(4,2),
						  stock_count int,
					      );

create table Sales.customers
							(customer_id int,
							first_name nvarchar(30),
							last_name nvarchar(30),
							Phone_number varchar(15),
							);
