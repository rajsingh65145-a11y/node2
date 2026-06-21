 create table students1(studentid integer primary key autoincrement,name text not null,age integer,fees real default 0.0,email text unique);

 insert into students1(name,age,fees,email) values('Amit kumar',20,1500.50,'amit@email.com');

 insert into students1(name,age,email) values('Rahul singh',23,'rahul@email.com');