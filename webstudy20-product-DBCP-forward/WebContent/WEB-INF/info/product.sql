/* table 명 : model2_product
 * column명, datatype, 제약조건
 * sequence
 */
-- ddl create 문 작성해보자
-- 상품번호/상품명/제조사/가격/등록일시
create table model2_product(
	pno number primary key,
	name varchar2(100) not null,
	maker varchar2(100) not null,
	price number not null,
	regdate date not null
)
create sequence model2_product_seq;

insert into model2_product(pno, name, maker, price, regdate) values(model2_product_seq.nextval,'아이폰','애플',1000,sysdate);

select pno,name,maker,price,to_char(regdate,'yyyy/mm/dd') from model2_product;

delete model2_product where pno=?