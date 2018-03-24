-- step5_db_subquery.sql
/* Subquery : SQL안의 SQL
 *				주 SQL내의 부 SQL 
 */ 
--가장 높은 가격의 상품명은??
select max(price) from product; --190 나옴
select name from product where price=190;
--위 두 SQL을 subquery를 이용해 하나의 SQL로 처리한다.

select name from product where price=(select max(price) from product);

-- 상품 중 최저가 상품의 제조사는?
select maker from product where price=(select min(price) from product);

select * from product order by price desc;

--평균가보다 높은 애들중에 가장 낮은애의 상품명과 제조사는????
--1) 평균가격
	select avg(price) from product;
--2) 평균가보다 높은 가격의 상품들 중 가장 낮은 가격
	select min(price) from product where price>(select avg(price) from product)
--3) 그 가격의 상품명과 제조사
select name,maker from product where price=(select min(price) from product where price>(select avg(price) from product));


create table employee(
	empno number primary key,
	name varchar2(100) not null,
	job varchar2(100) not null,
	salary number not null
)
create sequence employee_seq;

insert into employee(empno, name, job, salary) values(employee_seq.nextval,'이윤희','개발',800);
insert into employee(empno, name, job, salary) values(employee_seq.nextval,'아이유','영업',500);
insert into employee(empno, name, job, salary) values(employee_seq.nextval,'류완선','개발',1000);				
insert into employee(empno, name, job, salary) values(employee_seq.nextval,'고우진','개발',1500);				

select count(*) from employee

commit


