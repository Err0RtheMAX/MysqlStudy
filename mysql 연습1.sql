/**
챕터 1 ~ 4 정리
*/

# 일부분 어트리뷰트를 테이블에서 선택해서 출력할 수 있다.
select salesID, quantitypurchased, priceperitem,
QuantityPurchased * PricePerItem from sales;

# 필드 연결하기 concat함수를 아용하여 두 열의 어트리뷰트를 내용을 하나로 합친다.
select wow.SalesID, wow.Firstname, wow.lastname, concat(wow.Firstname, ' ', wow.lastname) as full_name from Sales  wow;

# 문자 함수 사용하기
select left('sunlight', 3) as 'the answer';
select right('sunlight', 5) as 'the answer2';
select substring('Why are you crying', 13, 6) as 'reason'; -- 시작지점 13으로부터 6글자만 출력하기

# 표현의 왼쪽, 오른쪽에 있는 빈칸 없애는 함수
select ltrim('                          the apple') as 'the answer'; -- 중간의 공백은 없애지 않고 가장 맨 왼쪽 공백만 제거

-- rtrim으로 오른쪽의 공백을 없앨 수 있다.


# 현재 시간 가져오는 함수 (mysql에서는 now() 함수 사용, oracle에서는 current_date, ms sql 서버에서는 getdate()로 사용
select now() as 'time';

# 현재 요일을 가져오기
select date_format('2021-01-06','%y'); -- %d : day, %m : month, %y : year

# 두 날짜 사이의 날짜 수 계산하기
select datediff('2018-03-28', '2018-03-01'); -- 끝나는 시간, 시작하는 시간 순서대로 넣는다. (27일 차이)

# 숫자 함수
select round(777.23, -1) as result; -- 일의 자리에서 반올림
select round(777.23, -2) as result; -- 십의 자리에서 반올림
select round(777.23, 1) as result; -- 소수점 2째 자리에서 반올림

select power(2, 3) as total; -- 2의 3 제곱
select power(2, .5) as result; -- 제곱근 구하기


# 변환 함수 (cast를 이용하여 형식 변환하기)
select '2021-01-06' as 'today', cast('2021-01-06' as datetime) as 'converted day';

select description, weight from products; -- wieght 일부 값이 null로 출력된다.

select description, ifnull(weight, 'unknown') as weight from products; 
-- mysql에서는 ifnull로 null 대신에 출력할 어트리뷰트를 선택하고, 대체할 글자를 쓴다.


/**
챕터 5 : 데이터 정렬
*/

# 오름차 순으로 정렬하기

select firstname, lastname from salespeople order by lastname;
-- Lastname을 기준으로 오름차 순으로 정렬한다. (abc 순서로) (같은 lastname을 가지는 경우에는 그냥 앞에 것 부터 순서대로 배치한다)

select firstname, lastname from salespeople order by lastname, firstname;
-- 우선적으로 Lastname을 기준으로 오름차 순으로 정렬하고, 같은 last이름을 가진 경우에는 firstname을 기준으로 오름차순 정렬을 한다.

select firstname, lastname from salespeople order by lastname desc;
-- 내림차순 정렬하기

select concat(lastname, ' - ', firstname) as fullname from salespeople order by lastname asc;
-- 두 열의 내용을 합쳐서 order by 정렬 가능

select characterdata from tableforsort order by characterdata;
-- 오름차순 정렬에서는 null 값이 가장 먼저 출력된다.
-- 23이 5보다 먼저 출력되는 이유는 정렬할 때 문자로 간주되었기 때문이다.

/**
챕터 6 : 선택 기준
*/
select FirstName, LastName, QuantityPurchased from sales where QuantityPurchased > 6;
-- where 조건절로 특정 조건을 만족하는 튜플들을 출력할 수 있다.

select * from sales limit 2;
-- 2행까지 출력 제한시키기

select * from book;

select title as 'book title', currentmonthsales as 'quantity sold' from books
where author = 'shakespeare'
order by currentmonthsales desc limit 1;

-- 셰익스피어가 작가인 책들을 책이 팔린 양의 숫자를 내림차 순으로 정렬하고, 그 중에서 1개 행만 출력하기
-- (as로 어트리뷰트의 이름을 변경했음)

select movietitle as 'Movie' from movies
where movietitle like '%love%';
-- love가 들어있는 영화 제목 출력하기
-- 와일드카드 %를 양쪽에 쓰면 해당 문자가 맨 앞, 중간, 맨 뒤에 있는 튜플들의 값을 찾을 수 있다.

select movietitle as 'Movie' from movies
where movietitle like 'Love%';
-- 무조건 맨 앞에 love가 들어있는 영화 제목만을 출력하기

/*
% : 아무 문자 (0개도 가능)
_ : 정확히 한 문자
*/
