drop table customer;

create table customer(
	id varchar2(100) primary key,
	password number not null,
	name varchar2(100) not null,
	address varchar2(100) not null,
	birthday date not null,
	regdate date not null
)


insert into customer(id,password,name,address,birthday,regdate) values('a','1','김','서울','1988-05-16',sysdate);
insert into customer(id,password,name,address,birthday,regdate) values('b','2','류','강남','1967-03-01',sysdate);

select count(*) from customer;

select * from customer;