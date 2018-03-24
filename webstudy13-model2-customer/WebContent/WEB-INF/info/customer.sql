drop table customer;

create table customer(
	id varchar2(100) primary key,
	name varchar2(100) not null,
	address varchar2(100) not null
)

insert into customer(id,name,address) values('java','유동규','성남');

select count(*) from customer;