/*creating tables*/
create table department(dno integer primary key,
					   name varchar(30),
					   manager varchar(30),
					   location varchar(40));

create table employee(eno integer primary key,
					 address varchar(30),
					 gender char,
					 salary numeric(8,2),
					 dob date,
					 dno integer references department(dno));

create table project(pno integer primary key,
					pname varchar(30),
					pLocation varchar(30),
					dno integer references department(dno));

create table dependent(dname varchar(30),
					  gender char,
					  relationship varchar(20),
					  dob date,
					  eno integer references employee(eno));

create table works_on(eno integer references employee(eno),
					 pno integer references project(pno),
					 hrs_worked float);
/*displaying tables*/
select * from department;
select * from employee;
select * from project;
select * from dependent;
select * from works_on;

/*inserting values*/
insert into department(dno,name,manager,location)
values(1,'Science','Mr.John Kim','pimpri chinchwad'),
      (2,'Commerce','Mr.Rahul Patel','pune'),
	  (3,'Economics','Mrs.Anaya Jain','bhosari'),
	  (4,'Data analyst','Mr.Mohit Kamble','sharadnagar'),
	  (5,'Administrator','Mrs.Priya More','Mohannagar'),
	  (6,'Research','Mrs.Unnati Malharkar','KasbaPeth'),
	  (7,'Headquarter','Mr.Nikhil Waghmode','Chinchwad');
	  
insert into employee(eno,address,gender,salary,dob,dno)
values(110,'312 pimpri','M',500000.00,'10-aug-2000',1),
	  (111,'12 chinchwad','F',550000.00,'15-jul-1999',2),
	  (112,'143 pune','M',400000.00,'25-jan-1998',1),
	  (113,'110 banglore','M',600000.00,'26-oct-2001',4),
	  (114,'14 kerala','F',350000.00,'01-feb-2002',4),
	  (115,'150 mumbai','F',600000.00,'11-mar-1997',6),
	  (116,'111 delhi','M',650000.00,'15-jun-1999',7),
	  (117,'1 assam','M',550000.00,'16-aug-2003',7),
	  (118,'44 pcmc','F',400000.00,'13-jun-2002',2);

insert into project(pno,pname,plocation,dno)
values(201,'project A','londan',1),
       (202,'project B','sri lanka',1),
	   (203,'project C','america',2),
	   (204,'project D','india',3),
	   (205,'project E','kerala',4),
	   (206,'project F','mumbai',5),
	   (207,'project G','delhi',6),
	   (208,'project H','pune',7),
	   (209,'project I','europe',2);

insert into dependent(dname,gender,relationship,dob,eno)
values('john','M','sister','10-jan-2003',110),
       ('emily','F','daughter','11-feb-2005',111),
	   ('ana','F','wife','13-mar-2004',112),
	   ('sam','M','son','5-aug-2007',113),
	   ('mohan','M','husband','20-oct-2000',112),
	   ('soniya','F','daughter','22-jul-2001',113),
	   ('sonu','M','son','18-apr-2000',114),
	   ('anaya','F','wife','21-aug-1999',115),
	   ('raj','M','son','11-jan-1998',116),
	   ('siya','F','neighbour','12-sep-2004',117);
	   
insert into works_on(eno,pno,hrs_worked)
values(110,201,35),
       (111,202,22.5),
	   (112,203,12.6),
	   (113,204,10),
	   (114,205,13.5),
	   (115,206,5),
	   (116,207,4.5),
	   (117,208,15),
	   (118,209,10.7);
	   
