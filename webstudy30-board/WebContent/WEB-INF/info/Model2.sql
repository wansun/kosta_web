drop table board_member;

create table board_member(
	id varchar2(100) primary key,
	password varchar2(100) not null,
	name varchar2(100) not null
)

select * from board_member;

drop table board;
create table board(
	bno number primary key,
	title varchar2(100) not null,
	text clob not null,
	regdate date not null,
	bcount number default 0 not null,
	id varchar2(100) not null,
	constraint fk_id foreign key(id) references board_member(id) 
)
drop table board;
select * from board;
commit

create sequence board_seq start with 1;

insert into board_member (id,password,name) values('rws','1','류완선');
insert into board(bno, title, text, regdate, id) values(board_seq.nextVal,'제목입니다','내용입니다',sysdate,'rws');

insert into board_member (id,password,name) values('syj','1','송용준');
insert into board(bno, title, text, regdate, id) values(board_seq.nextVal,'제목일까','내용일까',sysdate,'syj');

insert into board_member (id,password,name) values('hs','1','한샘');
insert into board(bno, title, text, regdate, id) values(board_seq.nextVal,'제목','내용',sysdate,'hs');

insert into board_member (id,password,name) values('ob','1','원빈');
insert into board(bno, title, text, regdate, id) values(board_seq.nextVal,'제목원빈','내용원빈',sysdate,'ob');

insert into board_member (id,password,name) values('iny','1','이나영');
insert into board(bno, title, text, regdate, id) values(board_seq.nextVal,'제목이나영','내용이나영',sysdate,'iny');

select b.bno, b.title, b.regdate, b.bcount, m.name from board b, board_member m where b.id=m.id and m.id='rws';


select b.title, b.text from board b, board_member m where b.id=m.id;





select * from board;



select b.bno, b.title, to_char(b.regdate,'yyyy.mm.dd'), b.bcount, m.name from board b, board_member m where b.id=m.id




