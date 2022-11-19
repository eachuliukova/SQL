--select gender, min(birth_date), max(birth_date), count(*) from employees.employee group by gender;

--select department_id, count(*) from employees.department_employee where to_date = '9999-01-01' group by department_id;

--select department_id, count(*) from employees.department_employee where (from_date <= '1998-05-01' and to_date >= '1998-05-01') group by department_id 

--select * from (select department_id, count(*) as c 
--from employees.department_employee 
--where to_date = '9999-01-01'
--group by department_id) as R where c>20000;

--select max(amount), min(amount), avg(amount) 
--from employees.salary where employee_id = 10020; 

--select title, count(*) from employees.title group by title;

--select * from
--(select from_date, count(*) as C from employees.department_employee group by from_date) as R
--where C > 1;


--select * from
--(select department_id, count(*) as C from employees.department_manager where from_date <= current_date and to_date >= current_date group by department_id) as R
--where C > 1;


--select * from
--(select employee_id, count(*) as C from employees.salary where from_date <= current_date and to_date >= current_date group by employee_id) as R
--where C > 1;

--------------вложенный запрос

--select first_name, last_name, id from employees.employee where id in
--(select employee_id from employees.title 
--where title = 'Senior Engineer'
--and from_date <= current_date and to_date >= current_date);


--select first_name, last_name, id from employees.employee where id in
--(select employee_id from 
--(select employee_id, count(*) as c 
--from employees.department_employee
--where from_date <= current_date and to_date >= current_date 
--group by employee_id) as R where c>=2);


--select first_name, id from employees.employee where id in
--(select employee_id from employees.title
--where title = 'Manager');


--select first_name, id from employees.employee where id in
--(select employee_id from employees.department_employee where department_id in
--(select department_id from 
--(select  department_id, count(*) as c 
--from employees.department_employee 
--where to_date = '9999-01-01'
--group by department_id) 
--as R where c>50000));


select employee_id, min(amount) from employees.salary where to date = '9999-01-01';









