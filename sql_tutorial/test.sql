
select * from Employee;
select email from Employee;
select city from Employee;
select distinct city from EMPLOYEE;
select FIRSTNAME from EMPLOYEE where lastname = 'King';
select LASTNAME, email from EMPLOYEE where regexp_like (email,'^[a-z0-9._-]+@[a-z0-9.-]+\.[a-z]{2,3}$','i');
select current_date  from dual;
select FirstName || ' ' || LastName as "Sales"  from Employee where title  LIKE 'Sales%';