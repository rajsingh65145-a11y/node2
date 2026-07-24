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

create trigger trg_mid
    before insert on tblemp
    begin
    select
    case
    when new.m_id not in (101,102)then
    raise(abort,'invalid manager id')
    end;
    end;
 select *from tblemp;
  insert into tblemp values(112, 'Raj', 'Sharma', '21-02-1996', 50000, 103, 'Peon');

DROP TRIGGER trg_mid;