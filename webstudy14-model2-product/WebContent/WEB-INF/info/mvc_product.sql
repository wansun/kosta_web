-- mvc_product
create table mvc_product(
	id number primary key,
	name varchar2(100) not null,
	maker varchar2(100) not null,
	price number not null
)

drop table mvc_product;

create sequence mvc_product_seq;
drop sequence mvcproduct_seq;

select*from mvc_product;