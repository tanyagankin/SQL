create table if not exists employees(
id_1 serial primary key,
employees_name varchar(50) not null
);  

select * from employees ;--70
select * from salary_hw;
select * from employee_salary;
select * from roles_1;
select * from roles_employee;


insert into Employees (employees_name, id_1)
values('Anna',1),
	   ('Mark',2),
	   ('Adam',3),
	   ('Andrei',4),
	   ('Dasha',5),
	   ('Diana',6),
	   ('Sasha',7),
	   ('Viktoriya',8),
	   ('Nastya',9),
	   ('Vanya',10),
	   ('Luba',11),
	   ('Alla',12),
	   ('Miya',13),
	   ('Soli',14),
	   ('Mori',15),
	   ('Dima',16),
	   ('Dorit',17),
	   ('Sor',18),
	   ('Vova',19),
	   ('Nikita',20),
	   ('Vita',21),
	   ('Lara',22),
	   ('Anton',23),
	   ('Misha',24),
	   ('Kostya',25),
	   ('Kolya',26),
	   ('Petya',27),
	   ('Nika',28),
	   ('Gari',29),
	   ('Olya',30),
	   ('Pasha',31),
	   ('Vanya',32),
	   ('luba',33),
	   ('Anna',34),
	   ('Mark',35),
	   ('Adam',36),
	   ('Andrei',37),
	   ('Dasha',38),
	   ('Diana',39),
	   ('Sasha',40),
	   ('Sonya',41),
	   ('Nastya',42),
	   ('Vanya',43),
	   ('Luba',44),
	   ('Anna',45),
	   ('Mark',46),
	   ('Adam',47),
	   ('Andrei',48),
	   ('Dasha',49),
	   ('Diana',50),
	   ('Sasha',51),
	   ('Roni',52),
	   ('Nastya',53),
	   ('Valya',54),
	   ('luba',55),
	   ('Anna',56),
	   ('Mark',57),
	   ('Adam',58),
	   ('Andrei',59),
	   ('Dasha',60),
	   ('Diana',61),
	   ('Sasha',62),
	   ('Katya',63),
	   ('Nastya',64),
	   ('Vanya',65),
	   ('Luba',66),
	   ('Anna',67),
	   ('Mark',68),
	   ('Adam',69),
	   ('Andrei',70);
	   
create table salary_hw(
 id_1 serial primary key,
 monthly_salary int not null
 );

insert into Salary_hw( monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400);
	  
create table Employee_salary(
  id_1 serial primary key,
  employee_id int not null unique,
  salary_id_1 int not null
  );
 
insert into Employee_salary (id_1,employee_id, salary_id_1)
  values(1,89,5),
  		(2,88,3),
  		(3,87,1),
  		(4,86,2),
  		(5,85,4),
  		(6,84,6),
  		(7,80,7),
  		(8,83,9),
  		(9,82,8),
  		(10,81,10),
  		(11,1,12),
  		(12,3,14),
  		(13,2,15),
  		(14,4,8),
 		(15,40,11),
  		(16,65,2),
  		(17,35,9),
		(18,29,7),
		(19,18,5),
  		(20,5,3),
  		(21,55,4),
  		(22,32,1),
  		(23,7,1),
  		(24,8,2),
  		(25,9,4),
  		(26,10,6),
  		(27,20,7),
  		(28,21,9),
  		(29,22,8),
  		(30,31,10),
  		(31,23,12),
  		(32,25,14),
  		(33,26,15),
  		(34,27,8),
 		(35,28,11),
  		(36,15,2),
  		(37,13,9),
		(38,61,7),
		(39,62,5),
  		(40,68,3);
  		
 create table Roles_1(
 	id_1 serial primary key,
 	role_name int unique not null
 	); 
 select * from Roles_1;

alter table roles_1 alter column role_name type varchar(30);

insert into roles_1(role_name)
 values
       ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
 	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
	   ('HR'),
       ('CEO'),
	   ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');

      truncate table roles_employee restart identity ;
      
      
create table roles_employee( 
	id_1 serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key(employee_id)
	    references employees(id),
	foreign key (role_id)
		references roles_1(id_1)
);

insert into roles_employee(employee_id,role_id)
values(5,4),
	  (8,20),
	  (4,15),
	  (20,12),
	  (11,8),
	  (25,1),
	  (3,5),
	  (1,3),
	  (7,2),
	  (2,9),
	  (6,20),
	  (31,17),
	  (28,6),
	  (21,7),
	  (12,8),
	  (26,10),
	  (44,13),
	  (32,11),
	  (36,16),
	  (29,19),
	  (54,18),
	  (70,20),
	  (46,15),
	  (42,12),
	  (45,8),
	  (15,1),
	  (30,5),
	  (57,3),
	  (13,2),
	  (17,9),
  	  (19,4),
	  (37,20),
	  (68,15),
	  (9,12),
	  (10,8),
	  (14,1),
	  (16,5),
	  (34,3),
	  (18,2),
	  (27,9);
	 
select now ();