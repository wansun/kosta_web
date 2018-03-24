--step4_db_groupby.sql
/* group by : 테이블에서 특정 컬럼값을 기준으로 그룹화할 때 사용
 * having : group by에서 사용하는 조건절
 * 예) 상품테이블에서 제조사별 상품수, 가격평균
 */
select*from product;
--maker 별 상품수를 조회
select maker,count(*) as 상품수 from product group by maker order by 상품수 desc 
--maker 별 상품 평균가를 조회하되 평균가가 낮은~높은 순으로(오름차순) //around ->소수점 반올림
-- having 조건절, 별칭 사용 안된다.
select maker,round(avg(price)) as 평균가 from product 
group by maker having round(avg(price))>=100 order by 평균가 asc











