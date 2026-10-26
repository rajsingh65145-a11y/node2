create table student(rno,name);
insert into student values(1,'harsh'),(2,'mohit'),(3,'jay'),(3,'karan'),(5,'laksh'),(6,'krishna');
select *from student;

begin;
delete from student where rno<3;
select  *from student;
rollback;

select  *from student;

 begin;
delete from student where rno<3;
commit; 
 select  *from student;

 create table tblemp(eid,fname,lname,jdate,salary,m_id,post);
 insert into tblemp values
    (101, 'Hemant', 'Sharma', '1995-01-21', 50000, 0, 'Manager'),
    (102, 'Rita', 'Gandhi', '1997-12-20', 45000, 0, 'Manager'),
    (103, 'Maya', 'Mistry', '2001-11-12', 30000, 101, 'Programmer'),
    (104, 'Riya', 'Patel', '2003-09-15', 28000, 102, 'Programmer'),
    (105, 'Shreya', 'Patel', '2010-10-17', 5000, 101, 'Peon'),
    (106, 'Karan', 'Patel', '2015-08-18', 5000, 102, 'Peon'),
    (107, 'Reyanshi', 'Vyas', '2011-06-05', 15000, 101, 'Clerk'),
    (108, 'Mehul', 'Mehta', '2010-05-06', 17000, 102, 'Clerk'),
    (109, 'Krupali', 'Patil', '2015-04-08', 10000, 101, 'Accountant'),
    (110, 'Maitry', 'Vyas', '2017-03-11', 10000, 102, 'Accountant'),
 select *from tblemp;


 select *from tblemp where M_id=101;

 select distinct lname from tblemp;

select *from tblemp where salary between 10000 and 20000;

select *from tblemp where lname in('Patel','Mehta','Vyas');

select *from tblemp where fname like 'M%';

select *from tblemp where fname like '____';

select *from tblemp  order by salary desc limit  3;

select *from tblemp  order by salary desc limit  5 offset 3;

select eid,fname,salary from tblemp where salary<20000
    union
    select eid,fname,salary from tblemp where lname='Patel';

    select eid,fname,salary from tblemp where salary<20000
    union all
    select eid,fname,salary from tblemp where lname='Patel';

    select eid,fname,salary from tblemp where salary<20000
    intersect
    select eid,fname,salary from tblemp where lname='Patel';

  select eid,fname,salary from tblemp where salary<20000
    except
    select eid,fname,salary from tblemp where lname='Patel';
