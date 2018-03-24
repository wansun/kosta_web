-- SQL ���� �ּ�
/* SQL ������ �ּ�
 * 
 * SQL (Structured Query Language) : database ���� ���
 * 1. DDL (Data Definition Language)
 * 		create : table ����
 * 		drop : table ����
 * 		alter : table ����
 * 2. DML (Data Manipulatation Language) : ������ CRUD
 * 		insert : �����߰�   Create
 * 		select : ������ȸ   Read
 * 		update : ��������   Update
 * 		delete : ��������   Dlete
 * 3. DCL (Data Control Language)
 * 		Ʈ������ ����
 * 		commit ���� �����ͺ��̽��� �ݿ�
 * 		rollback �۾����
 */
-- table : �����͸� �����ϴ� ����
-- column : �Ӽ�
-- datatype : varchar2 ������ ������Ÿ��, number ����,�Ǽ� ������Ÿ��
-- constraint �������� : prmary key, not null ��
-- member table�� �����ϴ� DDL
-- column �� id, password, name, address
-- varchar2(100) ������ ������ Ÿ��, 100�� �ִ밪 ������
-- primary key�� ��������, unique + not null : �����ؾ� �ϰ� �ݵ�� ����
-- not null �ݵ�� �����ؾ� �ϴ� ��������
CREATE TABLE member(
	id VARCHAR2(100) PRIMARY KEY,
	password VARCHAR2(100) NOT NULL,
	name VARCHAR2(100) NOT NULL,
	address VARCHAR2(100)
)

DROP TABLE member; --���̺��� ����

-- ȸ�� ������ ���� (INSERT)
INSERT INTO member(id,password,name,address)VALUES('java','1234','Ȳ���','����');

-- ȸ�� ������ ��ȸ (SELECT)
SELECT*FROM member;

-- ȸ���� �̸��� �ּҸ� ��ȸ
SELECT name,address FROM member;

-- ȸ�� ������ �߰��ϼ��� (spring , abcd , ������ , ����)
INSERT INTO member(id,password,name,address)VALUES('spring','abcd','������','����');

-- java ���̵� ���� ȸ�� ������ ��ȸ (select ~ where)
SELECT password,name,address FROM member WHERE id='java';

-- ������ ��� ȸ�� �̸��� ��ȸ
SELECT name FROM member
WHERE address='����';

-- name�� Ȳ��� ���� address�� �Ͽ��̷� ���� (update ~ where)
UPDATE member SET address='�Ͽ���' WHERE name='Ȳ���';

-- �Ͽ��̿� ��� ȸ�� ���� ��ȸ
SELECT * FROM member WHERE address='�Ͽ���';

--���̵� spring�� ȸ���� �ּҸ� �Ͽ��̷� �����Ѵ�.
UPDATE member SET address='�Ͽ���' WHERE id='spring';

-- �Ͽ��̿� ��� ȸ�������� ���� ( delete )
DELETE member WHERE address='�д�';

SELECT*FROM member;

-- member table �� ����
DROP TABLE member;

-- address �� �����̰� name �� ������ ȸ���� ���̵�� �н����� ��ȸ
--- SELECT WHERE AND
SELECT * FROM member WHERE address='����' AND name='������';

-- constraint �������� primary key test
-- primary key : ubique + not null
INSERT INTO member(id,password,name,address)
VALUES('java','abcd','������','�Ǳ�');
-- �� SQL�� ERROR ������ id�� primary key ���������̹Ƿ� ������ id �Ұ�

INSERT INTO member(password,name,address)
VALUES('abcd','������','�Ǳ�');
-- �� SQL�� ERROR ������ id�� pk���������ӷ� null�Ұ�, �ݵ�� �ʿ�

INSERT INTO member(id,password,name)
VALUES('angel','abcd','������');
-- �ּҰ� null �� ȸ���鸸 ��ȸ 
-- null �� ���� ���� is null , is not null �� �ϰ�
-- = , != �����ڷδ� �Ұ�
SELECT*FROM member WHERE address is null
SELECT*FROM member WHERE address is not null

-- ����Ŭ �Լ� : �� ȸ���� count(*)
SELECT count(*) FROM member;

SELECT * FROM member WHERE ID='angel';
-- ���̵� angel�� ȸ���� name�� address�� update
UPDATE member SET name='����',address='�Ǳ�' WHERE ID='angel';














