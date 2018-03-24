-- step5_db_subquery.sql
/* Subquery : SQL���� SQL
 *				�� SQL���� �� SQL 
 */ 
--���� ���� ������ ��ǰ����??
select max(price) from product; --190 ����
select name from product where price=190;
--�� �� SQL�� subquery�� �̿��� �ϳ��� SQL�� ó���Ѵ�.

select name from product where price=(select max(price) from product);

-- ��ǰ �� ������ ��ǰ�� �������?
select maker from product where price=(select min(price) from product);

select * from product order by price desc;

--��հ����� ���� �ֵ��߿� ���� �������� ��ǰ��� �������????
--1) ��հ���
	select avg(price) from product;
--2) ��հ����� ���� ������ ��ǰ�� �� ���� ���� ����
	select min(price) from product where price>(select avg(price) from product)
--3) �� ������ ��ǰ��� ������
select name,maker from product where price=(select min(price) from product where price>(select avg(price) from product));


create table employee(
	empno number primary key,
	name varchar2(100) not null,
	job varchar2(100) not null,
	salary number not null
)
create sequence employee_seq;

insert into employee(empno, name, job, salary) values(employee_seq.nextval,'������','����',800);
insert into employee(empno, name, job, salary) values(employee_seq.nextval,'������','����',500);
insert into employee(empno, name, job, salary) values(employee_seq.nextval,'���ϼ�','����',1000);				
insert into employee(empno, name, job, salary) values(employee_seq.nextval,'�����','����',1500);				

select count(*) from employee

commit


