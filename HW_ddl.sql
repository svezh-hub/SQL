create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees;

insert into employees(employee_name)
values	('Jack'),
		('Levi'),
		('Ellie'),
		('Stella'),
		('Zoe'),
		('Aurora'),
		('Savannah'),
		('Brooklyn');
		
create table salary(
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

insert into salary(monthly_salary)
values	(1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
		
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (salary_id)
		references salary(id)
);

insert into employee_salary(employee_id, salary_id)
	values (1,1),
		   (2,2),
		   (3,3),
		   (4,4),
		   (5,5),
		   (6,6),
		   (7,1),
		   (8,2),
		   (9,3),
		   (10,4),
		   (11,5),
		   (12,6),
		   (13,1),
		   (14,2),
		   (15,3),
		   (16,4),
		   (17,5),
		   (18,6),
		   (19,1),
		   (20,2),
		   (21,3),
		   (22,4),
		   (23,5),
		   (24,6),
		   (25,11),
		   (26,12),
		   (27,13),
		   (28,14),
		   (29,15),
		   (30,16),
		   (31,3),
		   (32,4),
		   (33,10),
		   (34,6),
		   (35,1),
		   (36,2),
		   (37,9),
		   (38,4),
		   (39,5),
		   (40,6);
		   

select * from employee_salary;

create table roles (
	id serial primary key,
	role_name int not null unique
);

select * from roles;

alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

insert into roles(role_name)
values  ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
		
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

select * from roles_employee;

insert into roles_employee (employee_id, role_id)
	values  (1,1),
			(2,2),
			(3,2),
			(4,6),
			(5,7),
			(6,3),
			(7,11),
			(8,12),
			(9,13),
			(10,11),
			(11,12),
			(12,12),
			(13,7),
			(14,16),
			(15,2),
			(16,14),
			(17,10),
			(18,5),
			(19,5),
			(20,6),
			(21,6),
			(22,20),
			(23,17),
			(24,16),
			(25,12),
			(26,13),
			(27,11),
			(28,12),
			(29,13),
			(30,4),
			(31,17),
			(32,5),
			(33,3),
			(34,10),
			(35,20),
			(36,3),
			(37,1),
			(38,2),
			(39,7),
			(40,8);
			
select * from roles_employee;