
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