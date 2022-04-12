--Таблица employees
--
--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees(id, employee_name)
values  (default, 'Anna'),
	(default, 'Egor'),
	(default, 'Maxim'),
	(default, 'Alexey'),
	(default, 'Alesya'),
	(default, 'Irina'),
	(default, 'Estelle'),
	(default, 'Darya'),
	(default, 'Katerina'),
	(default, 'Lilya'),
	(default, 'Laura'),
	(default, 'Jennifer'),
	(default, 'Bernard'),
	(default, 'Rolly'),
	(default, 'Billy'),
	(default, 'Winter'),
	(default, 'John'),
	(default, 'Travis'),
	(default, 'Sarah'),
	(default, 'Paulette'),
	(default, 'Esther'),
	(default, 'Peter'),
	(default, 'Mai'),
	(default, 'Melvin'),
	(default, 'Judy'),
	(default, 'Vadim'),
	(default, 'Miriam'),
	(default, 'Margarit'),
	(default, 'Cindy'),
	(default, 'Geraldine'),
	(default, 'Zachery'),
	(default, 'Danielle'),
	(default, 'Jeffrey'),
	(default, 'Tracy'),
	(default, 'Edward'),
	(default, 'Ella'),
	(default, 'Verna'),
	(default, 'Frankie'),
	(default, 'Cinda'),
	(default, 'Jame'),
	(default, 'Roxanne'),
	(default, 'Raymond'),
	(default, 'Stanley'),
	(default, 'Jennifer'),
	(default, 'Reta'),
	(default, 'Arnulfo'),
	(default, 'Josef'),
	(default, 'Heather'),
	(default, 'Vadim'),
	(default, 'George'),
	(default, 'Shane'),
	(default, 'Tom'),
	(default, 'Keith'),
	(default, 'Lester'),
	(default, 'Clarence'),
	(default, 'Joyce'),
	(default, 'Denis'),
	(default, 'Janet'),
	(default, 'Alisa'),
	(default, 'Riki'),
	(default, 'Kathy'),
	(default, 'William'),
	(default, 'Bryan'),
	(default, 'Lewis'),
	(default, 'Elena'),
	(default, 'Wilhelmina'),
	(default, 'Arthur'),
	(default, 'Fern'),
	(default, 'Doretha'),
	(default, 'Kira'),
	(default, 'Lakeisha'),
	(default, 'Debbie'),
	(default, 'Bobby'),
	(default, 'Mary'),
	(default, 'Tiara'),
	(default, 'Jonnaton'),
	(default, 'Shannon'),
	(default, 'Rachel'),
	(default, 'Sylvia'),
	(default, 'Norbert'),
	(default, 'Millard'),
	(default, 'Timothy'),
	(default, 'Bessie'),
	(default, 'Lubov'),
	(default, 'Aida'),
	(default, 'Kyle'),
	(default, 'Crystal'),
	(default, 'Ernesto'),
	(default, 'Lawrence'),
	(default, 'Jared'),
	(default, 'Kirk'),
	(default, 'Dwight'),
	(default, 'Gerald'),
	(default, 'Jo'),
	(default, 'Edna'),
	(default, 'Willie'),
	(default, 'Peggy'),
	(default, 'Alan'),
	(default, 'Donald'),
	(default, 'Adeline'),
	(default, 'Emilia'),
	(default, 'Sharon');
	
select * from employees;

--Таблица salary
--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:
--- 1000
--- 1100
--- 1200
--- 1300
--- 1400
--- 1500
--- 1600
--- 1700
--- 1800
--- 1900
--- 2000
--- 2100
--- 2200
--- 2300
--- 2400

create table salary(
	id serial primary key,
	monthly_salary int not null
);


insert into salary(id, monthly_salary)
values  (default, 1000),
	(default, 1100),
	(default, 1200),
	(default, 1300),
	(default, 1400),
	(default, 1500),
	(default, 1600),
	(default, 1700),
	(default, 1800),
	(default, 1900),
	(default, 2000),
	(default, 2100),
	(default, 2200),
	(default, 2300),
	(default, 2400);
   		
select * from employee_salary;

--Таблица employee_salary
--
--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

insert into employee_salary(id, employee_id, salary_id)
values  (default, 1, 3),
	(default, 15, 5),
	(default, 54, 8),
	(default, 39, 4),
	(default, 4, 1),
	(default, 16, 9),
	(default, 18, 15),
	(default, 23, 14),
	(default, 44, 13),
	(default, 21, 12),
	(default, 65, 11),
	(default, 31, 10),
	(default, 43, 9),
	(default, 67, 8),
	(default, 34, 7),
	(default, 5, 6),
	(default, 7, 5),
	(default, 8, 4),
	(default, 14, 3),
	(default, 19, 2),
	(default, 55, 1),
	(default, 3, 15),
	(default, 6, 14),
	(default, 69, 13),
	(default, 33, 12),
	(default, 22, 11),
	(default, 58, 10),
	(default, 25, 9),
	(default, 27, 8),
	(default, 17, 7),
	(default, 109, 6),
	(default, 88, 5),
	(default, 91, 4),
	(default, 95, 3),
	(default, 113, 2),
	(default, 76, 1),
	(default, 84, 15),
	(default, 93, 14),
	(default, 101, 13),
	(default, 100, 9);
	
update employee_salary
set salary_id = 5
where salary_id = 4
	
--Таблица roles
--
--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:

create table roles(
	id serial primary key,
	role_name int not null unique
);

	
alter table roles
alter column role_name type varchar(30);

insert into roles(id, role_name)
values  (default, 'Junior Python developer'),
	(default, 'Middle Python developer'),
	(default, 'Senior Python developer'),
	(default, 'Junior Java developer'),
	(default, 'Middle Java developer'),
	(default, 'Senior Java developer'),
	(default, 'Junior JavaScript developer'),
	(default, 'Middle JavaScript developer'),
	(default, 'Senior JavaScript developer'),
	(default, 'Junior Manual QA engineer'),
	(default, 'Middle Manual QA engineer'),
	(default, 'Senior Manual QA engineer'),
	(default, 'Project Manager'),
	(default, 'Designer'),
	(default, 'HR'),
	(default, 'CEO'),
	(default, 'Sales manager'),
	(default, 'Junior Automation QA engineer'),
	(default, 'Middle Automation QA engineer'),
	(default, 'Senior Automation QA engineer');


select * from roles;

--Таблица roles_employee
--
--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:
	
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

insert into roles_employee(id, employee_id, role_id)
values  (default, 44, 5),
	(default, 3, 8),
	(default, 12, 4),
	(default, 56, 1),
	(default, 38, 6),
	(default, 23, 2),
	(default, 8, 3),
	(default, 6, 5),
	(default, 1, 6),
	(default, 13, 7),
	(default, 19, 15),
	(default, 36, 14),
	(default, 46, 13),
	(default, 48, 20),
	(default, 30, 17),
	(default, 40, 18),
	(default, 50, 3),
	(default, 66, 19),
	(default, 70, 12),
	(default, 5, 11),
        (default, 69, 5),
	(default, 54, 8),
	(default, 18, 4),
	(default, 42, 1),
	(default, 41, 6),
	(default, 31, 2),
	(default, 68, 3),
	(default, 34, 5),
	(default, 10, 6),
	(default, 11, 7),
	(default, 33, 15),
	(default, 51, 14),
	(default, 37, 13),
	(default, 47, 20),
	(default, 49, 17),
	(default, 16, 18),
	(default, 21, 3),
	(default, 7, 19),
	(default, 35, 12),
	(default, 59, 11);
		
select * from roles_employee;
