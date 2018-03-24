select name,address from member where id='spring' and password='abcd'

-- update 회원정보수정
update member set password='?',name='?',address='?' where id='spring';
/* MemberDAO update 에서 사용할 sql
 * 
 */
select*from member;

commit