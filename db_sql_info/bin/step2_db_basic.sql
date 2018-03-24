/*  SQL : �����ͺ��̽� ���� ���
 *   1. DDL : create, drop, alter
 *   2. DML : insert, delete, update, select
 *   3. DCL : commit, rollback
 */
 -- datatype : varchar2(9) : ���ڿ� �ִ� 9��(��������) �ѱ�3��, 
 --			   number : ���� �Ǽ��� ����
 CREATE TABLE typetest(
 	name varchar2(9) primary key,
 	money number not null
 )
-- �Ʒ� error : name ������ 9 �̹Ƿ� �������� 9�ڱ��� ����
insert into typetest(name,money)values('abcdefghij',1);
-- success
insert into typetest(name,money)values('abcdefghi',1);
-- �ѱ��� 3�ڱ��� ����, error
insert into typetest(name,money)values('�������',1);
-- success
insert into typetest(name,money)values('������',1);
select*from typetest;
-- name�� �������� ������ money�� 100���� ������Ʈ�Ѵ�.
update typetest set money=100 where name='������';
-- name�� �������� ������ money�� 200�� �����Ѵ�.
update typetest set money=money+200 where name='������';

-- name�� �������� ������ money�� ��ȸ�ÿ� 2��� ��ȸ�ǰ� �Ѵ�.
select name,money*2 from typetest where name='������';

/* DDL : ALTER - ���̺� ���� ����
 * ��������(constraint) - default
 * ex) hit number default 0 ���� ���������� �ָ� ������ hit�� insert ����������
 * 		default ���� 0���� ������.
 */
create table altertest(
	id varchar2(100) primary key,
	hit number default 0
)
insert into altertest(id) values('java'); -- hit�� insert ������ ������ default 0
select * from altertest;
-- java id�� hit ��  1 �������ǵ��� update ������ �ۼ��غ���.
update altertest set hit=hit+1 where id='java';
-- DDL alter�� �̿��� table���� �����غ���.
alter table altertest rename to altertest2;
select * from altertest; --table �� ���������Ƿ� error
select * from altertest2; --success
--�÷��� hit �� count�� ����
alter table altertest2 rename column hit to count;

/* table ����
 * ���̺�� : product
 * �÷��� : id, name, maker, price
 * ������Ÿ�� : price �� number, �������� varchar2(100)
 * �������� : id �� primary key, name, maker �� not null
 * 			price �� default 0
 * id      name     maker    price
 * �ᡡ���������ã������Ｚ������������
 * �⡡�������������������á�����������
 * �㡡����������7�����Ｚ������������
 */
 CREATE TABLE product(
 	id varchar2(100) primary key,
 	name varchar2(100) not null,
 	maker varchar2(100) not null,
 	price number default 0
 )
insert into product(id,name,maker,price) values('a','������8','�Ｚ',150);
insert into product(id,name,maker,price) values('b','������7','����',170);
insert into product(id,name,maker,price) values('c','������7','�Ｚ',100);
--�� ��ǰ�� 
select count(*) from product;
-- ��ǰ price �� ���� ���� �׼�
select max(price) from product;
-- ���� ���� �׼�
select min(price) from product;
-- ��հ���
select avg(price) from product;
-- ���� (���� ��������)
select name,price from product order by price asc;
-- ���� (���� ��������)
select name,price from product order by price desc;
-- maker�� �Ｚ�� ��ǰ�� name,maker,price�� ��ȸ�ϵ� ���ݳ���->������
-- ���� �����ϼ��� (select ~ where - order by)
select name,maker,price from product where maker='�Ｚ' order by price desc;
-- price�� 100 �̻� 150 ������ ��ǰ name �� price �� ������������ �����Ͽ� ��ȸ
select name,price from product where price>=100 and price<=150 order by price asc;
--between ���� ǥ�� ����
--���� (���� ��������)
select name,price from product where price between 100 and 150 order by price asc;
--���� ���� : id�� a �� ��ǰ ������ ��ȸ�Ѵ�.
select count(*) from product where id='aa'; --pk�� ��ȸ�ϹǷ� 0 �ƴϸ� 1
-- ��ȸ�� ��Ī�� �� ���� �ִ�
select count(*) as ��ǰ�� from product;

-- distinct : maker�� ������ ��ȸ 
select distinct maker from product;

-- product�� maker�� �Ｚ�� product �� name, maker, price�� ��ȸ�ϵ�
-- ��ȸ�� ��ǰ�� price�� 20�� �����Ͽ� ��ȸ�غ���. ���� ��������, ��Ī ���ξ�
select name,maker,price-20 as ���ξ� from product where maker='�Ｚ' order by price desc;


-- DCL
commit --���� �����ͺ��̽��� ������ �ݿ�, ��Ŭ������ auto commit �Ӽ������� ���� �ȵǹǷ�
       --��������� commit �� ���ָ� �ȴ�.










