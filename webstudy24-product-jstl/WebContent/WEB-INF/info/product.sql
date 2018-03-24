/*    table 명 :  model2_product
 * 	  column 명 , datatype , 제약조건 
 *    sequence 				
 */
-- ddl  create 문 작성해보자 

create table model2_product(
	pno number primary key,
	name varchar2(100) not null,
	maker varchar2(100) not null,
	price number not null,
	regdate date not null
)
create sequence model2_product_seq;

select * from model2_product;










