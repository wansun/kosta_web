/* oracle sequence
*	: 유일한 번호값을 자동생성해주는 객체
*	주로 primary key 자동 생성을 위해 사용한다.	
*/
--시퀀스 생성
create sequence test_seq;
--시퀀스 삭제
drop sequence test_seq;

--오라클에서 제공하는 기본 테이블 dual table을 이용해서 테스트
--nextval : 시퀀스다음 번호를 반환
select test_seq.nextval from dual;

--car table 생성
create table car(
	car_no number primary key,
	model varchar2(100) not null
)
--car sequence 생성해서 car_no 일련번호를 자동으로 생성하자
create sequence car_seq;
insert into car(car_no,model) values(car_seq.nextval,'소나타');

select*from car;
drop sequence car_seq;

--guestbook table
create table guestbook(
	page_no number primary key,
	title varchar2(100) not null,
	content varchar2(2000) not null
)
--page 번호는 자동생성하도록 하자
--시퀀스 생성, 시퀀스명은 guestbook_seq 로 한다.
create sequence guestbook_seq;

-- oracle dual table : 오라클에서 제공하는 기본테이블로서 컬럼하나에
--					      데이터 하나만 존재, 주로 시퀀스, 날짜, 산술 연산에 사용
--					      정보 변경(insert, update)은 불가
select * from dual;
insert into dual(dummy) values('aaa');--정보 변경 불가한 테이블, 권한없음
--시간 관련
select sysdate from dual; --이럴 때 dual table을 이용한다.



