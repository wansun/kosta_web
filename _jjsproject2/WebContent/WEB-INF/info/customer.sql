create table study(
	id number primary key,
	password varchar2(100) not null,
	name varchar2(100) not null,
	age number not null,
	address varchar2(100) not null
)

select *from study

drop table study

insert into study(id,password,name,age,address) values (study_seq.nextval,'1','류완선',31,'판교');
insert into study(id,password,name,age,address) values (study_seq.nextval,'2','한샘',31,'정자');
insert into study(id,password,name,age,address) values (study_seq.nextval,'3','유바롬',31,'분당');
insert into study(id,password,name,age,address) values (study_seq.nextval,'4','정재상',31,'안양');

create sequence study_seq;