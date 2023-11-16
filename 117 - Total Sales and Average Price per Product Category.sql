-- Question: Write a SQL query to calculate the total sales and average price per product category, 
-- for the products that have generated at least $500 in total sales. 
-- Display the results in descending order of total sales and round the average price to 
-- the second decimal place. 

select p.category
      , sum(s.amount)
      , round(sum(p.price) / count(p.category), 2) as "avg_price"
from sales s
join products1 p on p.id = s.product_id
group by p.category
having sum(s.amount) > 500
order by sum(s.amount) desc