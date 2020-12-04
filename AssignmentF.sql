create database Assignment;
use Assignment;
create table Member(
Member_Id int(5),
Member_Name Varchar(30),
Member_address Varchar(50),
Acc_Open_Date date,
Membership_type Varchar(20),
Penalty_Amount int(7)
);
create table Books(
Book_No int(6),
Book_Name VarChar(30),
Author_name Varchar(30),
Cost int(7),
Category Char(10)
);

create table Issue(
Lib_Issue_Id int(10),
Book_No int(6),
Member_Id int(5),
Issue_Date date,
Return_Date date
);
desc books;
desc issue;
desc member;
ALTER TABLE member
DROP COLUMN Penalty_Amount;
insert into member(Member_Id,Member_Name,Member_address,Acc_Open_Date,Membership_type)value (1,"Richa Sharma","Pune",'10-12-05',"Lifetime");
insert into member(Member_Id,Member_Name,Member_address,Acc_Open_Date,Membership_type)value(2,"Garima Sen","Pune",Curdate(),"Annual");
insert into member(Member_Id,Member_Name,Member_address,Acc_Open_Date,Membership_type)value(3,"Ross Geller","central",'2020-10-12',"Annual");
insert into member(Member_Id,Member_Name,Member_address,Acc_Open_Date,Membership_type)value(4,"Chandler Bing","Monica APt",Curdate(),"Annual");
insert into member(Member_Id,Member_Name,Member_address,Acc_Open_Date,Membership_type)value(5,"Joey","Spain",Curdate(),"Lifetime");
select*from member;

insert into books(Book_No,Book_Name,Author_name,Cost,Category)value(101,"Let us C","Denis Ritchie",450,"System");
insert into books(Book_No,Book_Name,Author_name,Cost,Category)value(102,"Oracle – Complete Ref","Loni",550,"Database");
insert into books(Book_No,Book_Name,Author_name,Cost,Category)value(103,"Mastering SQL","Loni",250,"Database");
insert into books(Book_No,Book_Name,Author_name,Cost,Category)value(104,"PL SQL-Ref","ScottUrman",750,"Database");
select*from books;
SET SQL_SAFE_UPDATES=0;
update books set Cost=300 WHERE Book_No=103;
update books set Category="RDBMS" WHERE Book_No=103;
Drop table Issue;
create table Issue(
Lib_Issue_Id int(10) primary key auto_increment,
Book_No int(6),
Member_Id int(5),
Issue_Date date,
Return_Date date
);
insert Issue values(7001,101,1,'2006-12-10',null);
insert into Issue (Book_No,Member_Id,Issue_Date,Return_Date) value(102,2,'2006-12-25',null);
insert into Issue (Book_No,Member_Id,Issue_Date,Return_Date) value(104,1,'2006-01-15',null);
insert into Issue (Book_No,Member_Id,Issue_Date,Return_Date) value(101,1,'2006-07-04',null);
insert into Issue (Book_No,Member_Id,Issue_Date,Return_Date) value(104,2,'2006-11-15',null);
insert into Issue (Book_No,Member_Id,Issue_Date,Return_Date) value(101,3,'2006-02-18',null);
select*from Issue;
