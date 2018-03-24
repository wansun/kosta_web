/* ERD , Foreign key , Join 

 * 
 *  ERD ( Entity Relationship Diagram ) 
 *  : 개체 관계 모델링 즉 데이터 모델링을 위한 다이어그램 
 *  
 *  Foreign key 
 *  :FK 외래키  
 *   참조무결성을 위한 제약조건 
 * 
 *  JOIN 
 *  : 여러 테이블의 정보를 결합하기 위한  SQL 
 * 
 *    
 *  사례 )   사원정보 저장하는 테이블 설계 
 *       사원번호 , 사원명 , 직종 , 월급  ,
 *             부서명 , 부서지역 , 부서대표전화번호 등 
 * 
 *       실제 데이터 
 *     1   아이유   개발  1000  연구개발부  판교  031  등등의 부서정보
 *     2   공유   개발  990    공공사업부  종로  02   등등의 부서정보 
 *     ....
 * 
 *     위와 같이 테이블을 설계하여 데이터를 저장하는 경우에 
 *     발생하는 문제 
 *     1) 중복된 데이터(부서정보)가 반복해서 저장된다 
 *      -> 데이터 중복되어 자원 소모 
 *     2) 정보 변경시 유연하게 대처할 수 없다 
 *      만약 부서정보가 변경될 경우 모든 사원의 부서정보가
 *      업데이트 되어야 한다 
 *    
 *     위의 사원 테이블을 분할 
 * 
 *   부서테이블  |-----0|<-  사원테이블 
 * 
 *      위와 같이 부서와 사원 테이블을 분할하여 관리하면 
 *   중복된 데이터 제거 -> 자원 절약 
 *       정보 변경시 유연하게 대처 
 * 
 * 
 *   Foreign key (FK) : 테이블 간의 연결을 설정하는 키 , 참조 무결성을 보장 
 *         
 *     
 *   Foreign key 제약조건을 사원테이블의 부서번호 컬럼에 부여하여  참조 무결성을 보장하게 한다 
 *   ->  Foreign key 제약 조건을 사원테이블의 부서번호 컬럼에 명시하면 
 *        부서테이블의 부서번호에 저장되지 않은 
 *          부서 번호를 사원정보 등록시 저장할 수 없다 
 *          즉  사원 테이블의 부서 번호는 반드시 부서 테이블에 존재하는 부서 번호만 입력해야 한다. 
 *          → 사원 테이블이 부서 테이블의 부서 번호를 참조 가능하도록 하는 것이다.  
 * 
 *     Foreign key (FK ) 문법  
 *     constraint 제약조건명 foreign key(참조 정보 저장 컬럼명)
 *     references 참조테이블(컬럼명)  
 *     또는 
 *   컬럼 선언시 바로 제약조건을 줄 때는 
 *   컬럼명 데이터 타입 constraint 제약조건명
 *      references 참조테이블(컬럼명)
 * 
 *    Master table ( 부모테이블 ) : 참조대상 테이블 
 *    ex) 부서테이블 
 *    
 *    자식테이블 : 참조하는 테이블  ex) 사원테이블  
 * 
 *   반드시 Master table 즉 참조대상 테이블부터 생성해야 한다 
 * 
 */

drop table department;
create table department(
	deptno number primary key,
	dname varchar2(100) not null,
	loc varchar2(100) not null,
	tel varchar2(100) not null
)

drop table employee;
create table employee( 
	empno number primary key,
	ename varchar2(100) not null, 
	sal number not null, 
	deptno number not null, 
	constraint fk_deptno foreign key(deptno) references department(deptno)
)
-- insert 시 fk 역할 확인
-- 부모키가 존재하지 않아 에러.
-- 즉 10번 부서가 존재해야 insert가 가능하다
insert into employee(empno,ename,sal,deptno)
values(1,'조민경',800,10;)
------------------------------------------------------------------
insert into department(deptno,dname,loc,tel)
values(10,'전략기획','판교','031');
insert into department(deptno,dname,loc,tel)
values(20,'공공사업','종로','02');
insert into department(deptno,dname,loc,tel)
values(30,'해양수산','부산','051');
-- 위 10번 부서정보를 저장한 후 아래 사원 정보를 저장할 수 있다.
-- foreign key 가 deptno 이므로 부모테이블(부서테이블)에 저장된
-- 부서번호만 저장이 가능하다. *foreign key는 참조 무결성을 보장한다.
insert into employee(empno,ename,sal,deptno) values(1,'조민경',800,10);
insert into employee(empno,ename,sal,deptno) values(2,'은성민',820,10);
insert into employee(empno,ename,sal,deptno) values(3,'정재상',860,20);

commit

select * from employee where empno=1;
--조민경 사원의 사원번호,사원명,월급,부서번호,부서명,지역을 모두 조회하고자한다.
--join sql이 필요(두 테이블 정보를 결합)

/* Join SQL : 하나 이상의 테이블 간의 정보를 결합하기 위한 SQL
 * 		ex) 조민경 사원 정보 및 조사원이 소속된 부서정보를 함께 조회하기 위해
 * 			employee table 과 department table의 정보를 join하도록 하자
 * 
 * select 별칭.컬렴명, 별칭.컬럼명 ...
 * from table명 별칭, table명 별칭
 * where 별칭.컬럼명=별칭.컬럼명  → 조인 조건
 * 
 * 조인 SQL을 사용할 때에는 테이블에 별칭을 권장
 * 이유는 각 테이블의 컬렴명이 중복될 수 있기 때문에
 */
select e.empno,e.ename,e.sal,e.deptno,d.deptno,d.loc
from department d, employee e
where d.deptno=e.deptno
-- select e.empno,e.ename,e.sal,e.deptno,d.deptno,d.loc from department d, employee e where d.deptno=e.deptno

-- empno 가 2인 사원의 ename,sal,부서명(dname)을 조회
select e.ename,e.sal,d.dname
from department d, employee e
where d.deptno=e.deptno and e.empno=2;


create sequence employee_seq;
drop sequence employee_seq;
employee_seq.nextval();
