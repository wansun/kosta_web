/* oracle sequence
*	: ������ ��ȣ���� �ڵ��������ִ� ��ü
*	�ַ� primary key �ڵ� ������ ���� ����Ѵ�.	
*/
--������ ����
create sequence test_seq;
--������ ����
drop sequence test_seq;

--����Ŭ���� �����ϴ� �⺻ ���̺� dual table�� �̿��ؼ� �׽�Ʈ
--nextval : ���������� ��ȣ�� ��ȯ
select test_seq.nextval from dual;

--car table ����
create table car(
	car_no number primary key,
	model varchar2(100) not null
)
--car sequence �����ؼ� car_no �Ϸù�ȣ�� �ڵ����� ��������
create sequence car_seq;
insert into car(car_no,model) values(car_seq.nextval,'�ҳ�Ÿ');

select*from car;
drop sequence car_seq;

--guestbook table
create table guestbook(
	page_no number primary key,
	title varchar2(100) not null,
	content varchar2(2000) not null
)
--page ��ȣ�� �ڵ������ϵ��� ����
--������ ����, ���������� guestbook_seq �� �Ѵ�.
create sequence guestbook_seq;

-- oracle dual table : ����Ŭ���� �����ϴ� �⺻���̺�μ� �÷��ϳ���
--					      ������ �ϳ��� ����, �ַ� ������, ��¥, ��� ���꿡 ���
--					      ���� ����(insert, update)�� �Ұ�
select * from dual;
insert into dual(dummy) values('aaa');--���� ���� �Ұ��� ���̺�, ���Ѿ���
--�ð� ����
select sysdate from dual; --�̷� �� dual table�� �̿��Ѵ�.



