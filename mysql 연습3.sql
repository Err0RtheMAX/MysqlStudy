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
 when grouping(subcategory) = 1 then 'subtotal'
 else ' ' end) as 'subtotal/total'
 from inventory
 group by category, subcategory with rollup;
 -- 의미있게 한 결과 subtotal