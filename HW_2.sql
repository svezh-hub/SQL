-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary
from employee_salary join salary on salary.id = employee_salary.salary_id
	 				 join employees on employees.id = employee_salary.employee_id; 

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name, monthly_salary
from employee_salary join employees on employees.id = employee_salary.employee_id
					 join salary on salary.id = employee_salary.salary_id
					 where monthly_salary < 2000;
					 
-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary
from employee_salary join employees on employees.id = employee_salary.employee_id
					 right join salary on salary.id = employee_salary.salary_id
					 where employee_name is NULL;
					 
-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary
from employee_salary join employees on employees.id = employee_salary.employee_id
					 right join salary on salary.id = employee_salary.salary_id
					 where employee_name is null and monthly_salary < 2000;
					 
-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name, monthly_salary
from employee_salary join salary on salary.id = employee_salary.salary_id
	 				 right join employees on employees.id = employee_salary.employee_id
	 				 where monthly_salary is null;
	 				 
-- 6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name 
from roles_employee 
join roles on roles.id = roles_employee.role_id
join employees on employees.id = roles_employee.employee_id; 

-- 7. ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name
from roles_employee join roles on roles.id = roles_employee.role_id 
					join employees on employees.id = roles_employee.employee_id
					where role_name like '%Java%';
				
-- 8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name
from roles_employee join roles on roles.id = roles_employee.role_id
					join employees on employees.id = roles_employee.employee_id 
					where role_name like '%Python%';
				
-- 9. ������� ����� � ��������� ���� QA ���������.
select employee_name, role_name
from roles_employee join roles on roles.id = roles_employee.role_id
					join employees on employees.id = roles_employee.employee_id 
					where role_name like '%QA%';
					
--  10. ������� ����� � ��������� ������ QA ���������.
select employee_name, role_name
from roles_employee join roles on roles.id = roles_employee.role_id
					join employees on employees.id = roles_employee.employee_id
					where role_name like '%Manual%';
					
-- 11. ������� ����� � ��������� ��������������� QA.
select employee_name, role_name
from roles_employee join roles on roles.id = roles_employee.role_id
					join employees on employees.id = roles_employee.employee_id
					where role_name like '%Automation%';
					
-- 12. ������� ����� � �������� Junior ������������.
select employee_name, monthly_salary
from roles_employee join roles on roles.id = roles_employee.role_id 
					join employees on employees.id = roles_employee.employee_id 
					join employee_salary on employee_salary.employee_id = roles_employee.employee_id
					join salary on salary.id = employee_salary.salary_id
					where role_name like '%Junior%';
					
-- 13. ������� ����� � �������� Middle ������������
select employee_name, monthly_salary
from salary join employee_salary on salary.id = employee_salary.salary_id 
			join employees on employee_salary.employee_id = employees.id 
			join roles_employee on employees.id = roles_employee.employee_id 
			join roles on roles_employee.role_id = roles.id
			where role_name like '%Middle%';
			
-- 14. ������� ����� � �������� Senior ������������.
select employee_name, monthly_salary
from salary join employee_salary on salary.id = employee_salary.salary_id 
			join employees on employee_salary.employee_id = employees.id 
			join roles_employee on employees.id = roles_employee.employee_id 
			join roles on roles_employee.role_id = roles.id
			where role_name like '%Senior%';
			
-- 15. ������� �������� Java �������������.
select monthly_salary
from salary join employee_salary on salary.id = employee_salary.salary_id 
			join employees on employee_salary.employee_id = employees.id 
			join roles_employee on employees.id = roles_employee.employee_id 
			join roles on roles_employee.role_id = roles.id
			where role_name like '%Java%';
			
-- 16. ������� �������� Python �������������.
select monthly_salary
from salary join employee_salary on salary.id = employee_salary.salary_id 
			join employees on employee_salary.employee_id = employees.id 
			join roles_employee on employees.id = roles_employee.employee_id 
			join roles on roles_employee.role_id = roles.id
			where role_name like '%Python%';
			
-- 17. ������� ����� � �������� Junior Python �������������.
select employee_name, monthly_salary
from salary join employee_salary on salary.id = employee_salary.salary_id 
			join employees on employee_salary.employee_id = employees.id 
			join roles_employee on employees.id = roles_employee.employee_id 
			join roles on roles_employee.role_id = roles.id
			where role_name like '%Junior Python%';
			
-- 18. ������� ����� � �������� Middle JS �������������.
select employee_name, monthly_salary
from salary join employee_salary on salary.id = employee_salary.salary_id 
			join employees on employee_salary.employee_id = employees.id 
			join roles_employee on employees.id = roles_employee.employee_id 
			join roles on roles_employee.role_id = roles.id
			where role_name like '%Middle Java%';
			
-- 19. ������� ����� � �������� Senior Java �������������.
select employee_name, monthly_salary
from salary join employee_salary on salary.id = employee_salary.salary_id 
			join employees on employee_salary.employee_id = employees.id 
			join roles_employee on employees.id = roles_employee.employee_id 
			join roles on roles_employee.role_id = roles.id
			where role_name like '%Senior Java%';
			
-- 20. ������� �������� Junior QA ���������.
select monthly_salary
from salary join employee_salary on salary.id = employee_salary.salary_id 
			join employees on employee_salary.employee_id = employees.id 
			join roles_employee on employees.id = roles_employee.employee_id 
			join roles on roles_employee.role_id = roles.id
			where role_name like 'Junior%QA%';
			
-- 21. ������� ������� �������� ���� Junior ������������.
select avg(monthly_salary) as avg_monthly_salary
from salary join employee_salary on salary.id = employee_salary.salary_id 
			join employees on employee_salary.employee_id = employees.id 
			join roles_employee on employees.id = roles_employee.employee_id 
			join roles on roles_employee.role_id = roles.id
			where role_name like 'Junior%';
			
-- 22. ������� ����� ������� JS �������������.
select SUM(monthly_salary) as SUM_monthly_salary
from salary join employee_salary on salary.id = employee_salary.salary_id 
			join employees on employee_salary.employee_id = employees.id 
			join roles_employee on employees.id = roles_employee.employee_id 
			join roles on roles_employee.role_id = roles.id
			where role_name like '%Java%';
			
-- 23. ������� ����������� �� QA ���������.
select MIN(monthly_salary) as MIN_monthly_salary
from salary join employee_salary on salary.id = employee_salary.salary_id 
			join employees on employee_salary.employee_id = employees.id 
			join roles_employee on employees.id = roles_employee.employee_id 
			join roles on roles_employee.role_id = roles.id
			where role_name like '%QA%';
			
-- 24. ������� ������������ �� QA ���������.
select max(monthly_salary) as MAX_monthly_salary
from salary join employee_salary on salary.id = employee_salary.salary_id 
			join employees on employee_salary.employee_id = employees.id 
			join roles_employee on employees.id = roles_employee.employee_id 
			join roles on roles_employee.role_id = roles.id
			where role_name like '%QA%';
			
-- 25. ������� ���������� QA ���������.
select count(role_id) as count_QA
from roles_employee join roles on role_id = roles.id 
					where role_name like '%QA%';
	
-- 26. ������� ���������� Middle ������������.
select count(role_id) as count_Middle
from roles_employee join roles on role_id = roles.id
where role_name like '%Middle%';

-- 28. ������� ���� (�����) �������� �������������.
select sum(monthly_salary) as fond
from salary join employee_salary on salary.id = salary_id;

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary
from salary join employee_salary on salary.id = employee_salary.salary_id 
			join employees on employee_salary.employee_id = employees.id 
			join roles_employee on employees.id = roles_employee.employee_id 
			join roles on roles_employee.role_id = roles.id
			order by employee_name, role_name, monthly_salary;
			
-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary
from salary join employee_salary on salary.id = salary_id 
			join employees on employee_salary.employee_id = employees.id 
			join roles_employee on employees.id = roles_employee.employee_id 
			join roles on role_id = roles.id 
			where monthly_salary >= 1700 and monthly_salary <= 2300
			order by monthly_salary;
			
-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary
from salary join employee_salary on salary.id = salary_id 
			join employees on employee_salary.employee_id = employees.id 
			join roles_employee on employees.id = roles_employee.employee_id 
			join roles on role_id = roles.id 
			where monthly_salary < 2300
			order by monthly_salary; 
			
--  32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary
from salary join employee_salary on salary.id = salary_id 
			join employees on employee_salary.employee_id = employees.id 
			join roles_employee on employees.id = roles_employee.employee_id 
			join roles on role_id = roles.id 
			where monthly_salary in (1100, 1500, 2000)
			order by monthly_salary;