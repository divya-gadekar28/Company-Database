/*Query to display all the employees working in department no.7*/
select employee.eno,address
from employee,department
where department.dno=employee.dno and
department.dno=7;

/*Query to display all the dependents of an female employees*/
select dname,employee.eno,employee.gender
from dependent,employee
where employee.eno=dependent.eno and
employee.gender='F';

/*Query to count total number of employees working in department no.4*/
select count(employee.eno)
from employee,department
where department.dno=employee.dno and
department.dno=4;

/*Query to display all the employees whose salary is greater than 5,00,000*/
select eno,address,gender,salary,dob
from employee
where employee.salary>500000.00;

/*Query to display details of employee having maximum salary*/
select employee.eno,address,dob,salary
from employee
where salary=(select max(salary) from employee);

/*Query to display all the projects of department no.1*/
select project.pno,pname,plocation,department.dno
from project,department
where department.dno=project.dno and
department.dno=1;
  
