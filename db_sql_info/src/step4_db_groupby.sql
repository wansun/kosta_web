--step4_db_groupby.sql
/* group by : ���̺��� Ư�� �÷����� �������� �׷�ȭ�� �� ���
 * having : group by���� ����ϴ� ������
 * ��) ��ǰ���̺��� �����纰 ��ǰ��, �������
 */
select*from product;
--maker �� ��ǰ���� ��ȸ
select maker,count(*) as ��ǰ�� from product group by maker order by ��ǰ�� desc 
--maker �� ��ǰ ��հ��� ��ȸ�ϵ� ��հ��� ����~���� ������(��������) //around ->�Ҽ��� �ݿø�
-- having ������, ��Ī ��� �ȵȴ�.
select maker,round(avg(price)) as ��հ� from product 
group by maker having round(avg(price))>=100 order by ��հ� asc











