insert into employees(first_name, last_name, salary, birth_date, emp_position) values ('Jan', 'Kowalski', 1400, '1950-10-15', 'Boss'), ('Kamil', 'Nowal', 4000, '1956-10-15', 'Programmer'), ('Marian', 'Kowal', 4000, '1980-12-15', 'Programmer'), ('Kamil', 'Kowalski', 1400, '1990-10-15', 'Architect'), ('Tomasz', 'Nowy', 4500, '1980-8-15', 'Project Manager'), ('Krzysztof', 'Nowakowicz', 4000, '1978-11-9', 'Programmer');

select * from employees order by last_name;

select * from employees where emp_position = 'Programmer';

select * from employees where extract(year from curdate()) - extract(year from birth_date) >= 30; 

update employees set salary = (salary * 1.1) where emp_position = 'Programmer';

delete from employees where id in(select id from (select id from employees where birth_date = (select max(birth_date) from employees)) as IDS);