/*View to display all the male dependents */
create or replace view v1 as 
select dependent.dname,gender,dob
from dependent
where dependent.gender='M';

select * from v1; /*to run the view*/

/*View to list the names of an project whose worked hrs are greater than 15hrs*/
create or replace view v2 as
select project.pno,pname,employee.eno,works_on.hrs_worked
from project,employee,works_on
where project.pno=works_on.pno and
employee.eno=works_on.eno and
works_on.hrs_worked>15;

select * from v2;

/*View to display details of employess whose birthday is in june month*/
create or replace view v3 as
SELECT *
FROM employee
WHERE to_char(dob, 'mon')='jun';

select * from v3;

/*View to display max salary of an female employee*/
create or replace view v4 as
select max(salary)
from employee,department
where department.dno=employee.dno and
employee.gender='F';

select * from v4;

/* View to find age of all the employees */
create or replace view v5 as
SELECT *,date_part('year',age(dob)) FROM employee;

select * from v5;

/*View to find total number of dependent of an employee no.113 */
create or replace view v6 as
select count(dependent.dname)
from employee,dependent
where employee.eno=dependent.eno and
employee.eno=113;

select * from v6;

/*View to find location of the manager of headquarter department */
create or replace view v7 as
select department.dno,manager,location
from department
where department.name='Headquarter';

select * from v7;
