
-- List the top 4 most ordered pizza types along with their quantities.

select pizza_types.category, sum(order_details.quantity) as quantity
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details
on order_details.pizza_id = pizzas.pizza_id  
group by pizza_types.category
order by quantity desc;



/* 
Your query calculates the total quantity of pizzas ordered for each category, grouped by pizza category, and sorts the result in descending order by total quantity. It’s already well-structured, but here are some alternative ways to write this query or variations for enhanced clarity and performance:

Original Query Explanation
JOIN operations:

pizza_types and pizzas are joined on pizza_type_id.
pizzas and order_details are joined on pizza_id.
SUM(order_details.quantity):

Aggregates the total quantity of pizzas ordered for each category.
GROUP BY pizza_types.category:

Groups the results by each pizza category.
ORDER BY quantity DESC:

Orders the categories based on the total quantity in descending order. */
