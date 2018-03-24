-- SQL 한줄 주석
/* SQL 여러줄 주석
 * 
 * SQL (Structured Query Language) : database 제어 언어
 * 1. DDL (Data Definition Language)
 * 		create : table 생성
 * 		drop : table 삭제
 * 		alter : table 수정
 * 2. DML (Data Manipulatation Language) : 정보를 CRUD
 * 		insert : 정보추가   Create
 * 		select : 정보조회   Read
 * 		update : 정보수정   Update
 * 		delete : 정보삭제   Dlete
 * 3. DCL (Data Control Language)
 * 		트랜젝션 제어
 * 		commit 실제 데이터베이스에 반영
 * 		rollback 작업취소
 */
-- table : 데이터를 저장하는 공간
-- column : 속성
-- datatype : varchar2 문자형 데이터타입, number 정수,실수 데이터타입
-- constraint 제약조건 : prmary key, not null 등
-- member table을 생성하는 DDL
-- column 은 id, password, name, address
-- varchar2(100) 문자형 데이터 타입, 100은 최대값 사이즈
-- primary key는 제약조건, unique + not null : 유일해야 하고 반드시 존재
-- not null 반드시 존재해야 하는 제약조건
CREATE TABLE member(
	id VARCHAR2(100) PRIMARY KEY,
	password VARCHAR2(100) NOT NULL,
	name VARCHAR2(100) NOT NULL,
	address VARCHAR2(100)
)

DROP TABLE member; --테이블을 삭제

-- 회원 정보를 생성 (INSERT)
INSERT INTO member(id,password,name,address)VALUES('java','1234','황명아','용인');

-- 회원 정보를 조회 (SELECT)
SELECT*FROM member;

-- 회원의 이름과 주소를 조회
SELECT name,address FROM member;

-- 회원 정보를 추가하세요 (spring , abcd , 이윤희 , 수원)
INSERT INTO member(id,password,name,address)VALUES('spring','abcd','이윤희','수원');

-- java 아이디를 가진 회원 정보를 조회 (select ~ where)
SELECT password,name,address FROM member WHERE id='java';

-- 수원에 사는 회원 이름을 조회
SELECT name FROM member
WHERE address='수원';

-- name이 황명아 분의 address를 하와이로 수정 (update ~ where)
UPDATE member SET address='하와이' WHERE name='황명아';

-- 하와이에 사는 회원 정보 조회
SELECT * FROM member WHERE address='하와이';

--아이디가 spring인 회원의 주소를 하와이로 변경한다.
UPDATE member SET address='하와이' WHERE id='spring';

-- 하와이에 사는 회원정보를 삭제 ( delete )
DELETE member WHERE address='분당';

SELECT*FROM member;

-- member table 을 삭제
DROP TABLE member;

-- address 가 수원이고 name 이 이윤희 회원의 아이디와 패스워드 조회
--- SELECT WHERE AND
SELECT * FROM member WHERE address='수원' AND name='이윤희';

-- constraint 제약조건 primary key test
-- primary key : ubique + not null
INSERT INTO member(id,password,name,address)
VALUES('java','abcd','아이유','판교');
-- 위 SQL은 ERROR 이유는 id가 primary key 제약조건이므로 동일한 id 불가

INSERT INTO member(password,name,address)
VALUES('abcd','아이유','판교');
-- 위 SQL은 ERROR 이유는 id가 pk제약조건임로 null불가, 반드시 필요

INSERT INTO member(id,password,name)
VALUES('angel','abcd','아이유');
-- 주소가 null 인 회원들만 조회 
-- null 을 비교할 때는 is null , is not null 로 하고
-- = , != 연산자로는 불가
SELECT*FROM member WHERE address is null
SELECT*FROM member WHERE address is not null

-- 오라클 함수 : 총 회원수 count(*)
SELECT count(*) FROM member;

SELECT * FROM member WHERE ID='angel';
-- 아이디가 angel인 회원의 name과 address를 update
UPDATE member SET name='설현',address='판교' WHERE ID='angel';














