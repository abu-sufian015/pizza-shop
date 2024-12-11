
-- Identify the most common pizza size ordered.

select p.size , count( od.order_details_id ) as total
from pizzas as p
join order_details as od
on p.pizza_id = od.pizza_id
group by p.size;
