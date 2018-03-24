/*  SQL : 데이터베이스 제어 언어
 *   1. DDL : create, drop, alter
 *   2. DML : insert, delete, update, select
 *   3. DCL : commit, rollback
 */
 -- datatype : varchar2(9) : 문자열 최대 9자(영문기준) 한글3자, 
 --			   number : 정수 실수를 저장
 CREATE TABLE typetest(
 	name varchar2(9) primary key,
 	money number not null
 )
-- 아래 error : name 사이즈 9 이므로 영문기준 9자까지 가능
insert into typetest(name,money)values('abcdefghij',1);
-- success
insert into typetest(name,money)values('abcdefghi',1);
-- 한글은 3자까지 가능, error
insert into typetest(name,money)values('이윤희님',1);
-- success
insert into typetest(name,money)values('이윤희',1);
select*from typetest;
-- name이 이윤희인 정보의 money를 100으로 업데이트한다.
update typetest set money=100 where name='이윤희';
-- name이 이윤희인 정보의 money에 200을 누적한다.
update typetest set money=money+200 where name='이윤희';

-- name이 이윤희인 정보의 money를 조회시에 2배로 조회되게 한다.
select name,money*2 from typetest where name='이윤희';

/* DDL : ALTER - 테이블 정보 변경
 * 제약조건(constraint) - default
 * ex) hit number default 0 으로 제약조건을 주면 별도로 hit에 insert 하지않으면
 * 		default 값이 0으로 잡힌다.
 */
create table altertest(
	id varchar2(100) primary key,
	hit number default 0
)
insert into altertest(id) values('java'); -- hit를 insert 해주지 않으면 default 0
select * from altertest;
-- java id의 hit 가  1 증가가되도록 update 구문을 작성해본다.
update altertest set hit=hit+1 where id='java';
-- DDL alter를 이용해 table명을 변경해본다.
alter table altertest rename to altertest2;
select * from altertest; --table 명 변경했으므로 error
select * from altertest2; --success
--컬럼명 hit 을 count로 변경
alter table altertest2 rename column hit to count;

/* table 생성
 * 테이블명 : product
 * 컬럼명 : id, name, maker, price
 * 데이터타입 : price 만 number, 나머지는 varchar2(100)
 * 제약조건 : id 가 primary key, name, maker 는 not null
 * 			price 는 default 0
 * id      name     maker    price
 * ａ　　　갤럭시８　　삼성　　　１５０
 * ｂ　　　아이폰７　　애플　　　１７０
 * ｃ　　　갤럭시7　　삼성　　　１００
 */
 CREATE TABLE product(
 	id varchar2(100) primary key,
 	name varchar2(100) not null,
 	maker varchar2(100) not null,
 	price number default 0
 )
insert into product(id,name,maker,price) values('a','갤럭시8','삼성',150);
insert into product(id,name,maker,price) values('b','아이폰7','애플',170);
insert into product(id,name,maker,price) values('c','갤럭시7','삼성',100);
--총 상품수 
select count(*) from product;
-- 상품 price 중 가장 높은 액수
select max(price) from product;
-- 가장 낮은 액수
select min(price) from product;
-- 평균가격
select avg(price) from product;
-- 정렬 (가격 오름차순)
select name,price from product order by price asc;
-- 정렬 (가격 내림차순)
select name,price from product order by price desc;
-- maker가 삼성인 제품의 name,maker,price을 조회하되 가격높은->낮은순
-- 으로 정렬하세요 (select ~ where - order by)
select name,maker,price from product where maker='삼성' order by price desc;
-- price가 100 이상 150 이하의 상품 name 과 price 를 오름차순으로 정렬하여 조회
select name,price from product where price>=100 and price<=150 order by price asc;
--between 으로 표현 가능
--정렬 (가격 오름차순)
select name,price from product where price between 100 and 150 order by price asc;
--존재 유무 : id가 a 인 제품 유무를 조회한다.
select count(*) from product where id='aa'; --pk로 조회하므로 0 아니면 1
-- 조회시 별칭을 줄 수도 있다
select count(*) as 상품수 from product;

-- distinct : maker의 종류를 조회 
select distinct maker from product;

-- product중 maker가 삼성인 product 의 name, maker, price를 조회하되
-- 조회시 상품의 price를 20씩 차감하여 조회해본다. 정렬 내림차순, 별칭 할인액
select name,maker,price-20 as 할인액 from product where maker='삼성' order by price desc;


-- DCL
commit --실제 데이터베이스에 정보를 반영, 이클립스는 auto commit 속성이지만 가끔 안되므로
       --명시적으로 commit 을 해주면 된다.










