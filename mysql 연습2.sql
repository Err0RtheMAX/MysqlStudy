/**
*  챕터7 : 불 논리
*/

select customername, quantitypurchased from purchases
where QuantityPurchased > 3 and QuantityPurchased < 7;
-- and 연산자 사용하기

select customername, quantitypurchased, PricePerItem from purchases
where QuantityPurchased > 8 or PricePerItem > 3;
-- or 연산자 사용하기

select customername, state, quantitypurchased from purchases
where not state = 'ny';
-- not 연산자 사용하기

select customername, state, quantitypurchased from purchases
where state <> 'ny';
-- 같은 결과 출력 <> not equal

select * from purchases where state <> 'il' and state <> 'ny';
-- and보다 not<> 연산자가 우선적으로 연산된다

select CustomerName, QuantityPurchased from purchases
where quantitypurchased >= 5 and QuantityPurchased <= 20;

select CustomerName, QuantityPurchased from purchases
where QuantityPurchased between 5 and 20;
-- between ~ and으로 구간 지정 가능

select customername, state from Purchases
where state in('il','ny');
-- in 연산자로 괄호 안에 있는 문자열이 포함되어있는 state 어트리뷰트가 있는 튜플들을 출력한다.

select customername, state from Purchases
where state not in('il','ny');
-- not in으로도 지정 가능

select * from products;

select description, weight from products where weight = 0;
-- 무게가 0인 튜플 출력

select description, weight from products where weight = 0 or weight is null;
-- 무게가 0이거나 null인 튜플 출력

select description, weight from products where ifnull(weight, 0) = 0;
-- 무게가 0이거나 null인 튜플 출력


/**
*
* 챕터 8 : 조건부 논리
*
**/


select * from groceries;

select
case categorycode
when 'f' then 'fruit' # categorycode 어트리뷰트에서 f값이면 category 어트리뷰트에 fruit로 출력
when 'v' then 'vegetable'
else 'other' # f, v 이외의 다른 값들은 모두 category 어트리뷰트에 other로 출력
end ) as 'category',
description, categorycode
from groceries;
-- case문을 사용해서 if else 구문처럼 대신에 when, then으로 표현 가능


select
case
when categorycode = 'f' then 'fruit' # categorycode 어트리뷰트에서 f값이면 category 어트리뷰트에 fruit로 출력
when categorycode = 'v' then 'vegetable'
else 'other' # f, v 이외의 다른 값들은 모두 category 어트리뷰트에 other로 출력
end as 'category',
description, categorycode
from groceries;

-- 같은 결과가 출력된다.


/**
*
* 챕터 9 : 데이터 요약
*
**/

select distinct artist from songtitles order by artist;
-- artist 어트리뷰트의 중복값을 제거한 튜플들만을 출력하고 오름차순으로 출력하기 (distinct로 중복 제거)

select * from fees;

select sum(fee) as 'total fee' from fees where feetype = 'gym';
-- sum으로 where 조건을 만족하는 튜플들의 총 합을 sum으로 구하기

select * from grades;

select avg(grade) as 'grade avg' from grades where gradetype = 'quiz';
-- avg로 where 조건을 만족하는 튜플들의 총 평균 avg로 구하기

select count(*) as 'count of homework rows' from grades where gradetype = 'homework';
-- count(*)로 하면 모든 행들을 샌다. 즉, where 조건에 만족하는 튜플들이 모두 몇 개가 있는지 count 한다.
-- null 값도 무시하지 않고 모두 포함해서 count 한다.

select count(grade) as 'count of homework scores' from grades where gradetype = 'homework';
-- gradetype이 homework인 튜플이 3개이지만 grade를 count를 할 때 한 개의 튜플이 grade가 null인 값을 가지므로 count하지 않는다
-- 그래서 count한 결과가 2로 된다.

select gradetype as 'grade type', avg(grade) as 'average grade' from grades
group by gradetype order by gradetype;
-- group by를 이용하여 select에서 반환된 데이터를 몇 개의 같은 gradetype을 가진 그룹끼리 묶어서 grade 평균을 내게 만든다.

select gradetype as 'grade type', avg(grade) as 'average grade', student as 'student'
from grades group by gradetype order by gradetype;
-- 출력되긴 하지만 잘못된 값이 출력된다. 왜냐하면 student 어트리뷰트를 가지고 gradetype을 여러 그룹으로 분류하는 과정에서 어떤
-- student 값을 어느 gradetype으로 들어가야 하는지 알 수 없기 때문이다.


select gradetype as 'grade type', student as 'student', avg(grade) as 'average grade'
from grades group by gradetype, student  order by GradeType, student;
-- 여러 열을 지정해서 group by, order by를 사용할 수 있다.

select student as 'student', gradetype as 'grade type', grade from grades
where gradetype = 'quiz' and grade >= 70 order by student, grade;
-- grades 테이블에서 학생, 성적 점수를 오름차순으로 정렬한 채로 출력하고, quiz에서 70점 이상 받은 튜플들을 출력한다.



select student as 'student', avg(grade) as 'grade' from grades
where gradetype = 'quiz' group by student  having avg(grade) >= 70 order by student asc;

-- having을 사용하여 group by로 각 학생마다 묶여진 모임들의 각 평균이 70이상 만족하는 경우를 찾는다.
-- having을 사용하기 위해서는 반드시 group by를 사용한다.

select student as 'student', avg(grade) as 'grade avg', gradetype from grades
where gradetype = 'homework' group by student having avg(grade) >= 50 order by student desc, gradetype desc;

/* group by 절의 조건부 논리 */

select * from groceries;

select (case categorycode
when 'f' then 'fruit'
when 'v' then 'vegetable'
else 'other'
end) as 'category',
count(*) as 'count' from groceries
group by (case categorycode
when 'f' then 'fruit'
when 'v' then 'vegetable'
else 'other'
end);

select * from grades;

select student as 'student', yearinschool, gradetype, avg(grade) as 'average' from grades
where gradetype = 'quiz' group by student, yearinschool, gradetype having avg(grade) >=
(case when yearinschool = 7 then 70 when yearinschool = 8 then 75 else 80 end)
order by student;
-- 학년(yearinschool)에 따라 만족해야 할 평균값이 달라지는 것을 case 문으로 사용하여 표현했다.
-- quiz에서 학년에 따라 만족해야 할 평균을 넘는 넘는 quiz 점수에 대한 평균 점수를 각 학생별로 산출하는 방법이다.
-- 여기서는 이자벨라만이 2개 이상 학년 평균에 넘는 quiz점수를 받았으므로 이자벨라의 만족해야 하는 점수 이상으로 받은 성적들의 평균이 나온다.alter


/* 랭킹 함수 */


/* mysql은 없는 기능!*/

