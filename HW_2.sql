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
values  (default, 'Anya'),
		(default, 'Egor'),
		(default, 'Max'),
		(default, 'Alex'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya'),
		(default, 'Anya');
	
select * from employees;

delete from employees where id between 71 and 224;

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

create table salary_h(
	id serial primary key,
	monthly_salary int not null
);


insert into salary_h(id, monthly_salary)
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
   		
select * from salary_h

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
)

insert into employee_salary (id, employee_id, salary_id)
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
		(default, 101 13),
		(default, 100, 9);