-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employees.employee_name, salary.monthly_salary from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employees.employee_name, salary.monthly_salary from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.employee_id = salary.id
where salary.monthly_salary < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employees.employee_name, salary.monthly_salary from employee_salary
right join employees on employee_salary.employee_id = employees.id 
right join salary on employee_salary.employee_id = salary.id
where employees.employee_name is null;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employees.employee_name, salary.monthly_salary from employee_salary
right join employees on employee_salary.employee_id = employees.id
right join salary on employee_salary.employee_id = salary.id
where employees.employee_name is null and salary.monthly_salary < 2000;

-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employees.employee_name, salary.monthly_salary from employee_salary
left join employees on employee_salary.employee_id = employees.id
left join salary on employee_salary.employee_id = salary.id
where salary.monthly_salary is null and employees.employee_name is not null;

-- 6. ������� ���� ���������� � ���������� �� ���������.
select employees.employee_name, roles.role_name from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id;

-- 7. ������� ����� � ��������� ������ Java �������������.
select employees.employee_name, roles.role_name from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Java developer%';

-- 8. ������� ����� � ��������� ������ Python �������������.
select employees.employee_name, roles.role_name from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Python developer%';

-- 9. ������� ����� � ��������� ���� QA ���������.
select employees.employee_name, roles.role_name from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA engineer%';

-- 10. ������� ����� � ��������� ������ QA ���������.
select employees.employee_name, roles.role_name from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Manual QA engineer%';

-- 11. ������� ����� � ��������� ��������������� QA
select employees.employee_name, roles.role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Automation QA engineer%';

-- 12. ������� ����� � �������� Junior ������������
select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employees.id = employee_salary.employee_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Junior%';

-- 13. ������� ����� � �������� Middle ������������
select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Middle%';

-- 14. ������� ����� � �������� Senior ������������
select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Senior%';

-- 15. ������� �������� Java �������������
select roles.role_name, salary.monthly_salary from salary
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.employee_id = roles.id
where roles.role_name like '%Java developer%';

-- 16. ������� �������� Python �������������
select roles.role_name, salary.monthly_salary from salary
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.employee_id = roles.id
where roles.role_name like '%Python developer%';

-- 17. ������� ����� � �������� Junior Python �������������
select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on  roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Junior Python developer%';

-- 18. ������� ����� � �������� Middle JS �������������
select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on employee_salary.salary_id =salary.id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Middle JavaScript developer%';

-- 19. ������� ����� � �������� Senior Java �������������
select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on employee_salary.salary_id = salary.id 
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Senior Java developer%';

-- 20. ������� �������� Junior QA ���������
select roles.role_name, salary.monthly_salary from salary
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Junior%' and roles.role_name like '%QA%';

-- 21. ������� ������� �������� ���� Junior ������������
select avg(salary.monthly_salary) from salary
join employee_salary on employee_salary.salary_id = salary.id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%Junior%';

-- 22. ������� ����� ������� JS �������������
select sum(salary.monthly_salary) from salary
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id 
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%JavaScript developer%';

-- 23. ������� ����������� �� QA ���������
select min(salary.monthly_salary) from salary
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';

-- 24. ������� ������������ �� QA ���������
select max(salary.monthly_salary) from salary
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';

-- 25. ������� ���������� QA ���������
select count(roles.role_name) from roles
join roles_employee on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like '%QA%';

-- 26. ������� ���������� Middle ������������.
select count(roles.role_name) from roles
join roles_employee on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
where roles.role_name like '%Middle%';

-- 27. ������� ���������� �������������
select count(roles.role_name) from roles
join roles_employee on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
where roles.role_name like '%developer%';

-- 28. ������� ���� (�����) �������� �������������.
select sum(salary.monthly_salary) from salary
join employee_salary on employee_salary.salary_id = salary.id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%developer%';

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on employee_salary.salary_id = salary.id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
order by salary.monthly_salary asc;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on employee_salary.salary_id = salary.id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary asc;

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where salary.monthly_salary < 2300
order by salary.monthly_salary asc;

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where salary.monthly_salary = 1100 or salary.monthly_salary = 1500 or salary.monthly_salary = 2000 
order by salary.monthly_salary asc;