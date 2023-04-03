create database onlineVotingDbDec;
use onlineVotingDbDec;
create table contact(
uName varchar(30) not null,
pNumber varchar(10) not null,
email varchar(50) not null,
cmnt varchar(100) not null
);
insert into contact values('Manish Kumar','6200457809','mk@gmail.com','Data Inserted');
create table adminn(
aName varchar(20) not null primary key,
aPassword varchar(20) not null
);
insert into adminn values('Mrai36','Manish11');
create table voters(
uName varchar(30) not null,
pNumber varchar(10) not null,
email varchar(50) not null,
address varchar(50) not null,
vNumber varchar(10) not null primary key,
dob varchar(10) not null
);
create table temp_vc_number(
vNumber varchar(10) not null primary key
);
select * from voters;
create table vote(
vNumber varchar(10) not null,
partie varchar(30) not null
);
insert into temp_vc_number values('123');