/* date 데이터 타입 : 시간 정보를 저장하는 타입
 * sysdate : 현재시간을 저장
 * to_date() : 문자형을 시간형으로 변환
 * to_char() : 시간형 데이터를 문자형으로 변환
 */

-- dual 테이블을 이용해 현재 시간을 조회
select sysdate from dual;

-- to_char(시간, 시간포멧)을 이용해 문자형으로 조회한다
-- 년 월 일 형식의 문자열로 조회
select to_char(sysdate,'yyyy.mm.dd') from dual;
-- 년 월 일 시 분 초 의 문자열로 조회
select to_char(sysdate,'yyyy.mm.dd hh24:mi:ss') from dual;

-- table 을 생성해서 테스트
create table date_test(
	id varchar2(10) primary key,
	mydate date not null
)
-- id 는 java, mydate는 현재 시간을 insert
insert into date_test(id,mydate) values('java',sysdate);
-- id 가 java 인 정보를 조회하되 mydate는 연 월 일 형식으로 한다.
select id,to_char(mydate,'yyyy.mm.dd') from date_test where id='java';

/* to-date(시간정보, 시간포맷)
 *  : 문자형 정보를 date형으로 변환
 * 
 * 웹어플리케이션에서 화면상에 입력한 시간정보를 서버에서 받으면
 * 문자형으로 확보되므로 to_date()를 이용해 db에 저장해야 한다.
 */
insert into date_test(id,mydate)
values('ajax',to_date('2018.3.14','yyyy.mm.dd'));

insert into date_test(id,mydate)
values('jquery',to_date('1999.1.7 5:20:30','yyyy.mm.dd hh24:mi:ss'));

commit

-- 시간 관련 연산
-- 하루전을 보고싶으면
select id,mydate,mydate-1 from date_test;
-- 현재시간과 저장시간의 일수를 확인
select id,sysdate-mydate from date_test;
-- trunc() : 소수점 이하 버리기
select id,trunc(sysdate-mydate) from date_test;
-- months_between(현재시간,등록시간) : 몇개월 차이
select id,trunc(months_between(sysdate,mydate)) from date_test;
-- 몇년
select id,trunc(months_between(sysdate,mydate)/12) from date_test;


