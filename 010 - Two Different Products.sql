-- Write a query that returns the name of brands that have at least two different products 
-- and its average price is greater than $3. Return the result order by brand name. 


select distinct p.brand_name
        , (select count(*) from products p1 where p.brand_name = p1.brand_name) as "Cnt"
        , (select avg(price) from products p2 where p.brand_name = p2.brand_name) as "Avg"
from products p
where ((select count(*) from products p1 where p.brand_name = p1.brand_name) >= 2)
  and ((select avg(price) from products p2 where p.brand_name = p2.brand_name) > 3)