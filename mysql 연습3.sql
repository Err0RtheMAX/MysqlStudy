/**
챕터10 : 소계와 크로스탭
 */
 
 /* rollup으로 소계내기 */
 
 select * from inventory;
 
 select category, subcategory, sum(quantity) from inventory
 group by category, subcategory
 order by category, subcategory;
 
 
 select category, subcategory, sum(quantity) from inventory
 group by category, subcategory with rollup;
 -- with rollup 을 사용하면 group by로 서브 그룹들을 나눈 각 그룹들의 총 합을 중간마다 보여준다
 -- 그래서 중간마다 null이 있는 행이 있는데 해당 서브그룹의 카테고리의 총 합을 합산한 행이다.
 -- 맨 마지막 행에서 모든 서브 그룹에서 종합한 총 합을 계산한 행이 나오는데 모두 null로 되어 있다.
 
 select ifnull(category, " ") as 'category',
 ifnull(subcategory, " ") as 'subcategory',
 sum(quantity) as 'quantity',
 (case when grouping(category) = 1 then 'grand total'
 -- 모든 그룹에 대한 총 합을 계산한 카테고리 행이라면(1)
 -- 즉, category가 NULL인 튜플에 해당하는 subtotal/total 어트리뷰트의 값을 grand total이라고 반환
 
 
 when grouping(subcategory) = 1 then 'subtotal' 
 -- 서브 그룹에 대한 총 합을 계산한 서브카테고리 행이라면(1)
 -- 즉, subcategory가 NULL인 튜플에 해당하는 subtotal/total 어트리뷰트의 값을 subtotal이라고 반환
 
 
 else ' ' end) as 'subtotal/total'
 -- 그 이외의 경우라면 공백으로 반환하기
 
 
 from inventory
 group by category, subcategory with rollup;
 -- 의미있게 한 결과 subtotal
 
 
 
 
 /**
 *
 * 챕터 11 : 내부 조인
 *
 **/
 
select * from sales;
select * from customers;
-- sales, customers 테이블에 존재하는 FirstName, LastName 이라는 어트리뷰트가 공통적으로 존재하므로
-- 내부 조인 가능하다


select * from customers;
select * from orders;
-- sales, customers 테이블에 존재하는 CustomerID 라는 어트리뷰트가 공통적으로 하고
-- 두 테이블을 합치는 내부조인이 가능하다. 


select * from customers inner join orders
on customers.CustomerID = orders.CustomerID;
-- 다음과 같이 inner join이라는 키워드를 사용해서 내부 조인을 할 두 테이블을 from 절에서 명시한다.
-- on 키워드를 이용하여 매치할 어트리뷰트를 지정시킨다.
-- customers 테이블 부터 먼저 보이고 조인한다.

select * from orders inner join customers
on customers.CustomerID = orders.CustomerID;
-- inner join 양 쪽의 테이블을 서로 바꿔서 수행시키면 조인이 되는 테이블의 순서가 바뀐다.
-- orders 테이블부터 먼저 보이고 조인한다.

select * from customers, orders
where customers.CustomerID = orders.CustomerID;
-- inner join ~ on 없이도 from ~ where을 이용하여 내부 조인을 구현할 수 있다.
-- 그런나 명확히 내부 조인을 했다는 표시가 나지 않고, where로만 하면 만족하는 조건을 선택하는 기준만 보이기 때문에 사용 권장 X


/**
*
* 챕터12 : 외부 조인
*
**/

select * from customers;
select * from orders;
select * from refunds;

/* 왼쪽 조인 */
 select *
 /*customers.FirstName as 'first name',
 customers.LastName as 'last name',
 orders.OrderDate as 'order date',
 orders.OrderAmount as 'order amount',
 refunds.RefundDate as 'refund date',
 refunds.RefundAmount as 'refund amount'*/
 from customers left join orders
 on customers.CustomerID = orders.CustomerID
 left join refunds
 on orders.OrderID = refunds.OrderID;
 /* order by customers.LastName, customers.FirstName, orders.OrderDate; */
  -- left join 키워드를 기준으로 왼쪽에 있는 테이블들의 튜플들을 보존하면서 공통된 키워드를 연결하여
 -- 오른쪽 테이블에 해당하는 어트리뷰트의 값들을 매치하는 연산이다.
 -- 그래서 왼쪽 테이블에 대하여 오른쪽 테이블에 값이 없는 경우도 있으므로 NULL이 생기기도 한다.
 
 
 /* Null 값 확인하기 */
 
 select * from customers
 left join orders on customers.CustomerID = orders.CustomerID
 left join refunds on orders.OrderID = refunds.OrderID
 where orders.OrderID is not null
 and refunds.RefundID is not null;
 
 -- left join을 하는 과정에서 orders, refunds 테이블에서 null이 나오는 튜플들을 제외시키는 not null
 -- 키워드를 사용한다.
 
 
 /* 오른쪽 조인 */
 
 select * from refunds
 right join orders on orders.OrderID = refunds.OrderID
 right join customers on orders.CustomerID = customers.CustomerID;
 
-- 왼쪽 조인과 반대로 오른쪽 조인은 최대한 오른쪽에 있는 테이블들을 최대한 많이 남겨두는 것이다.
-- 왼족 조인과 마찬가지로 결과가 나오는 과정에서 null이 존재하는 튜플이 생성 될 수 있다.
 
