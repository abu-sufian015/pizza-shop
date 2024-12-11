
-- Calculate the percentage contribution of each pizza type to total revenue.   (revenue/ total_revenue)* 100 - 


SELECT 
    pizza_types.name as pizza_names,
    
    (SUM(order_details.quantity * pizzas.price)/ (SELECT 
    SUM(order_details.quantity* pizzas.price)*100 as percentile_revenue
FROM 
    order_details 
JOIN 
    pizzas 
ON 
    od.pizza_id = p.pizza_id))
    
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_names
ORDER BY revenue DESC;
