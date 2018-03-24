-- Oracle row_number() over() : 조회된 ROW에 대한 순차적인 번호를 제공
-- View : 뷰는 물리적으로 존재하지 않은 가상테이블
--        SELECT 명령의 실행결과를 테이블처럼 사용
-- Inline View : SQL 문장에서 From 절에 사용된 subquery 
-- paging sql 정의시 사용됨 

drop table player;
create table player(
 no number primary key,
 title varchar2(100) not null,
 singer varchar2(30) not null,
 price number not null
)

select * from player;

create sequence mp3_seq;

insert into player(no,title,singer,price) values(mp3_seq.nextval,'가을아침','아이유',700);
insert into player(no,title,singer,price) values(mp3_seq.nextval,'좋니','윤종신',500);
insert into player(no,title,singer,price) values(mp3_seq.nextval,'시차','우원재',400);
insert into player(no,title,singer,price) values(mp3_seq.nextval,'DNA','방탄소년단',800);
insert into player(no,title,singer,price) values(mp3_seq.nextval,'밤편지','아이유',900);
insert into player(no,title,singer,price) values(mp3_seq.nextval,'가시나','선미',1000);
insert into player(no,title,singer,price) values(mp3_seq.nextval,'Power','EXO',300);
insert into player(no,title,singer,price) values(mp3_seq.nextval,'Ko Ko Bop','EXO',600);
commit
select count(*) from board_inst;

select * from player order by no desc;
-- row_number() over(정렬)
select row_number() over(order by no desc) as rnum, no, title, from player;
-- 삭제 title이 Power 인 곡을 삭제
delete from player where title='Power';
-- row num이 1 ~ 3 사이의 곡들만 조회
-- error : rnum 은 조회되는 시점에 생성되므로 -> sebquery를 이용한다.
select row_number() over(order by no desc) as rnum,no,title, from player
where rnum<=3;
-- SubQuery 를 이용해 3이하의 곡들을 조회
select rnum,no,title
from(
	select row_number() over(order by no desc) as rnum,no,title, from player
)
where rnum<=3;
-- rnum 이 4 이상 6 이하인 곡들을 조회
-- Inline View에 별칭을 부여해본다
select p.*
from(
	select row_number() over(order by no desc) as rnum,no,title, from player
) p
where rnum between 4 and 6;

-- Paging SQL
select count(*) from board_inst;
-- 1페이지에 해당되는 게시물들을 조회 (rownum이 1이상 5이하)
select b.*
from (
	select row_number() over(order by no desc) rnum, no, title from board_inst
) b
where rnum between 1 and 5
-- Board 와 Member Table을 조인하여 회원아이디와 이름까지
-- 조회되도록 해본다
-- 대략적인 구조
/*
select b.*, m.id, m.name
from(
	row_number, 게시물정보(회원아이디)
)b, member m
where 조인조건 and rnum between 1 and 5
order by no desc;
*/
select b.no, b.title, b.timeposted, b.hits, b.id, m.name
from (
	select row_number() over(order by no desc) rnum, no, title, id, hits,
	to_char(time_posted,'yyyy.mm.dd') timeposted
	from board_inst
) b, board_member m
where b.id=m.id and rnum between 1 and 5
order by no desc;










