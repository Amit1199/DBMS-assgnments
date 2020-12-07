create database Assignment;
use Assignment;
drop table publishers;
create table Publishers (
pname char(20) primary key,
phone int(10),
email varchar(20)
);
create table Authors(
aname char(20) primary key,
phone int(10)
);
create table Titles(
titleid int(10) primary key,
title char(20),
pubdate date,
price int(4)
);
create table titleauthors(
auid int (10),
titleid int(10) primary key, 
importance varchar(20),
constraint foreign key (titleid) references Titles(titleid)
);
create table subjects(
subject_name varchar(30) primary key,
aname char(20),
 pname char(25),
 constraint fk_subjects foreign key (aname) references authors (aname),
 constraint fk2_subjects foreign key (pname) references publishers(pname)
);
insert into titleauthors values(1,101,83082704);
insert into titleauthors values(2,102,8308270);
insert into publishers values('a',83082704,'WDT@VSNL.NET');
insert into publishers values('b',8308270,'INFO@WROX.COM');
insert into publishers values('McGraw Hill',830829,'INFO@WROX.COM');
insert into titles values(103,'a','2020-10-12',83082704);
insert into titles values(102,'b','2020-10-13',8308270);
INSERT INTO TITLES VALUES (104,'JAVA COMP. REF','2005-04-03',499);
INSERT INTO TITLES VALUES (105,'PRO. VB.NET','2005-06-15',450);
insert into authors values('W',83082704);
insert into authors values('x',8308270);
desc publishers;
drop table subjects;
insert into publishers values('ORACLE DATABASE 10g',830827,'WDT@VSNL.NET');
insert into publishers values('JAVA LANGUAGE',830828,'INFO@WROX.COM');
insert into publishers values('JAVA ENTEPRISE',830829,'BACK@MCGRAWHILL.COM');
insert into subjects values('ORACLE DATABASE 10g','W','a');
insert into subjects values('JAVA LANGUAGE','x','b');
insert into subjects values('JAVA ENTEPRISE EDITION','w','b');
INSERT INTO subjects VALUES ('VISUAL BASIC.NET',null,null);
INSERT INTO subjects VALUES ('ASP.NET','x','b');
INSERT INTO subjects VALUES ('.NET','x','a');
drop table titles;
select * from subjects;
select * from titleauthors;
select * from titles;
select * from authors;
select * from publishers;
select *from subjects where subject_name like 'ORACLE%';
select *from subjects where  subject_name like 'j%';
select *from subjects where subject_name like ".net"; 
select * from subjects where aname like "%x";
select * from publishers where pname like "%hill";
update titles set price=540,pubdate='2002-4-12' where titleid=101;
update titles set price=575,pubdate='2005-5-01' where titleid=102;
update titles set price=475,pubdate='2005-2-03' where titleid=103;
select title from titles where price<500;
select title from titles where price<500;

select subject_name from subjects where subject_name like 'java%';
select title from titles where titleid >'103';
select *  from titles having titleid=101 or price > 400;
select * from publishers where pname IN('JAVA ENTEPRISE', 'java language');
SELECT title, MAX(price) FROM titles ;
SELECT auid, AVG(importance) FROM titleauthors;
SELECT COUNT(*) FROM authors;
select title,sum(price+titleid) from titles where titleid=101;

select title from titles where pubdate <'2005-04-03';
SELECT *FROM titles WHERE pubdate < CAST('2005-04-03' AS DATE);
SELECT YEAR(current_date()) ;
SELECT MONTH (current_date()) ;
select last_day(pubdate) from titles where title like'java%';




mysql> create database Assignment2_2;
Query OK, 1 row affected (0.02 sec)

mysql> use Assignment2_2;
Database changed

mysql> create table Employee
    -> (
    -> emp_id int(10),
    -> emp_name char(50)
    -> );
Query OK, 0 rows affected (0.12 sec)

mysql> insert into Employee values(10089680,'Chandler Bing');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee values(10089681,'Joey Tribianni');
Query OK, 1 row affected (0.00 sec)

mysql> select * from Employee;
+----------+----------------+
| emp_id   | emp_name       |
+----------+----------------+
| 10089680 | Chandler Bing  |
| 10089681 | Joey Tribianni |
+----------+----------------+
2 rows in set (0.00 sec)

mysql> Alter table Employee add column dept_id int(10);
Query OK, 0 rows affected (0.17 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc Employee;
+----------+----------+------+-----+---------+-------+
| Field    | Type     | Null | Key | Default | Extra |
+----------+----------+------+-----+---------+-------+
| emp_id   | int(10)  | YES  |     | NULL    |       |
| emp_name | char(50) | YES  |     | NULL    |       |
| dept_id  | int(10)  | YES  |     | NULL    |       |
+----------+----------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> Alter table Employee Modify column emp_name varchar(50);
Query OK, 2 rows affected (0.16 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> desc Employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_id   | int(10)     | YES  |     | NULL    |       |
| emp_name | varchar(50) | YES  |     | NULL    |       |
| dept_id  | int(10)     | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)


mysql> truncate table Employee;
Query OK, 0 rows affected (0.02 sec)

mysql> select * from employee;
Empty set (0.00 sec)

mysql> create table Emp
    -> (
    -> SAL float(7,3)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> insert into Emp values (1234.567);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Emp values (1530.019);
Query OK, 1 row affected (0.00 sec)

mysql> insert into Emp values (1652.786);
Query OK, 1 row affected (0.00 sec)

mysql> insert into Emp values (1775.156);
Query OK, 1 row affected (0.01 sec)

mysql> select * from Emp;
+----------+
| SAL      |
+----------+
| 1234.567 |
| 1530.019 |
| 1652.786 |
| 1775.156 |
+----------+
4 rows in set (0.00 sec)
mysql> select round(SAL)from Emp;
+------------+
| round(SAL) |
+------------+
|       1235 |
|       1530 |
|       1653 |
|       1775 |
+------------+
4 rows in set (0.00 sec)