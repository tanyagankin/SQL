
CREATE TABLE public.students (
	id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	"password" varchar(50) NOT NULL,
	created_on timestamp NOT NULL,
	CONSTRAINT students_email_key UNIQUE (email),
	CONSTRAINT students_pkey PRIMARY KEY (id)
);
--1)Display all fields and all rows
select * from students s ;

--2)Display all students from the table 
select id, name from students;

--3)Display only user ID  
select id from students s ;

--4)Display only the username
select name as user_names from students s ;

--5)Display only user emails
select email from students s ;

--6)Display username and email
select name, email from students s ;

--7)Display id, name, email and creation date of users
select id, name, email, created_on  from students;

--8)Display users where password is 12333
select id, name, password from students
where password ='12333';

--9)Display users who were creared 2021-03-26 00:00:00
select id, name, created_on from students s
where created_on ='2021-03-26 00:00:00';

--10)Display users where the name contains the word Anna
select id, name from students
where name like '%Anna%';

--11)Display users where is 8 in the name at the end
select id, name from students 
where name like '%8';

--12)Display users where in the name there is a letter "a"
select id, name from students s
where name like '%a%';

--13)Display users who were created 2021-07-12 00:00:00
select id, name, created_on from students s
where created_on = '2021-07-12 00:00:00';

--14)Display users who were created on 2021-07-12 00:00:00 and have a password of 1m313
select id, name from students s
where created_on ='2021-07-12 00:00:00'
and password ='1m313';

--15)Display users who were created on 2021-07-12 00:00:00 and whose name contains the word Andrey
select id, name from students 
where created_on ='2021-07-12 00:00:00'
and name like '%Andrey%';

--16)Display users who were created on 2021-07-12 00:00:00 and who have the number 8 in their name 
select id, name from students s
where created_on ='2021-07-12 00:00:00'
and name like '%8%';

--17)Display the user whose id is 110
select id, name from students s 
where id = 110;

--18)Display the user whose id is 153;
select id, name from students s
where id = 153;

--19)Display user whose id is greater then 140
select id, name from students s  
where id > 140;

--20)Display user whose id is less than 130
select id, name from students s 
where id < 130;

--21)Display user whose id is less than 127 or greater than 188
select id , name from students s
where id < 127 or id > 188;

--22)Display the user whose id is less than or equal to 137
select id, name from students 
where id <= 137;

--23)Display the user whose id is greater than or equal to 137
select id , name from students
where id >=137;

--24)Display a user whose id is greater than 180 but less than 190
select id, name from students s
where id > 180 and id < 190;

--25)Display user whose id is between 180 and 190
select id, name from students s
where id between 180 and 190;

--26)Display users where the password is 12333,1m313,123313
select id,name from student 
where password = '12333' or password ='1m313' or password = '123313';

select * from students s 
where password in ('12333','1m313','123313');

--27)Display users where created_on equal 2020-10-03 00:00:00,2021-05-19 00:00:00,2021-03-26 00:00:00
select id, name from students s 
where created_on in('2020-10-03 00:00:00','2021-05-19 00:00:00','2021-03-26 00:00:00');

select id, name from students
where created_on = '2020-10-03 00:00:00'
	or created_on = '2021-05-19 00:00:00'
	or created_on = '2021-03-26 00:00:00';

--28)Display the minimum id
select min(id) as MinimumId
from students; 

--29)Display the maximum id
select max(id) as MaximumId
from students s ;

--30)Display the number of users
select count(id)
from students s ;

--31)Display user id, name, user creation date.
--Sort in ascending order by the date the user was added
select id, name, created_on
from students s 
order by created_on asc ;

--32)Display user id, name, user creation date.
--Sort in descending order by the date the user was added 
select id, name, created_on
from students s 
order by created_on desc;
