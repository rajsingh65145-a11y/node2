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
    (111, 'Mohan', 'Mehta', '2020-02-27', 15000, 101, 'Electrician');

  select *from tblemp;
  select m_id, count(m_id) as total_count from tblemp group by m_id;
 select m_id,count(m_id)as total_count from tblemp group by m_id having count(m_id)>3;
select *from tblemp order by lname,fname;
select eid,fname,salary,
    (case when salary<10000 then 1000
 when salary <20000 then 2000
  when salary <30000 then 3000
 else 5000 end)as bonus
  from tblemp;

create table stud_info(rno,name,marks,did);

insert into stud_info values
    (1,'mayank',56,1),
    (2,'maya',36,2),
    (3,'mohit',45,1),
    (4,'raghav',10,10),
    (5,'ankit',49,3),
    (6,'jay',89,1);

select *from stud_info;


create table dept(did,dname);

insert into dept values
    (1,'it'),
    (2,'management'),
    (3,'science'),
    (4,'commerce'),
    (5,'arts'),
    (6,'CJP');
 select *from dept;


select name,dname from dept
    inner join stud_info on dept.did=stud_info.did;

    select name,dname from dept,stud_info
    where dept.did=stud_info.did;


select name,dname from dept
    left join stud_info on dept.did=stud_info.did;

    select name,dname from stud_info cross join dept;

    select a.rno as arno, b.name as bname,a.marks as amarks
    from stud_info a,stud_info b
    where a.marks<b.marks;

select name,dname from dept
    full join stud_info on dept.did=stud_info.did;
