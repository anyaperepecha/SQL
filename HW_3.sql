
select * from employees

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
where employees.employee_name is null

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employees.employee_name, salary.monthly_salary from employee_salary
right join employees on employee_salary.employee_id = employees.id
right join salary on employee_salary.employee_id = salary.id
where employees.employee_name is null and salary.monthly_salary < 2000

-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employees.employee_name, salary.monthly_salary from employee_salary
left join employees on employee_salary.employee_id = employees.id
left join salary on employee_salary.employee_id = salary.id
where salary.monthly_salary is null and employees.employee_name is not null

-- 6. ������� ���� ���������� � ���������� �� ���������.
select employees.employee_name, roles.role_name from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id;

-- 7. ������� ����� � ��������� ������ Java �������������.
select employees.employee_name, roles.role_name from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Java developer%'

-- 8. ������� ����� � ��������� ������ Python �������������.
select employees.employee_name, roles.role_name from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Python developer%'

-- 9. ������� ����� � ��������� ���� QA ���������.
select employees.employee_name, roles.role_name from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA engineer%'

-- 10. ������� ����� � ��������� ������ QA ���������.
select employees.employee_name, roles.role_name from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Manual QA engineer%'

-- 11. ������� ����� � ��������� ��������������� QA
select employees.employee_name, roles.role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Automation QA engineer%'

-- 12. ������� ����� � �������� Junior ������������
-- 13. ������� ����� � �������� Middle ������������
-- 14. ������� ����� � �������� Senior ������������
-- 15. ������� �������� Java �������������
-- 16. ������� �������� Python �������������
-- 17. ������� ����� � �������� Junior Python �������������
-- 18. ������� ����� � �������� Middle JS �������������
-- 19. ������� ����� � �������� Senior Java �������������
-- 20. ������� �������� Junior QA ���������
-- 21. ������� ������� �������� ���� Junior ������������
-- 22. ������� ����� ������� JS �������������
-- 23. ������� ����������� �� QA ���������
-- 24. ������� ������������ �� QA ���������
-- 25. ������� ���������� QA ���������
-- 26. ������� ���������� Middle ������������.
-- 27. ������� ���������� �������������
-- 28. ������� ���� (�����) �������� �������������.
-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000