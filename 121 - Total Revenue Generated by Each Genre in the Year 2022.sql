-- Question: Write a SQL query to find the total revenue generated by each genre in the year 2022. 
-- Order by revenue DESC. 


select distinct b.genre, sum(o.order_amount) as "revenue"
from books b
left join orders o on o.book_id = b.id
group by b.genre
order by sum(o.order_amount) desc