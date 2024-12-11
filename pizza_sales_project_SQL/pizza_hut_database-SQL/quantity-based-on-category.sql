
-- Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT 
    SUM(od.quantity) AS total, (pt.category) AS cate
FROM
    order_details AS od
        JOIN
    pizzas AS p ON od.pizza_id = p.pizza_id
        JOIN
    pizza_types AS pt ON pt.pizza_type_id = p.pizza_type_id
GROUP BY cate
ORDER BY total;


-- another example using windows function


SELECT DISTINCT 
    pt.category, 
    SUM(od.quantity) OVER (PARTITION BY pt.category) AS total_quantity
FROM 
    pizza_types AS pt
JOIN 
    pizzas AS p 
ON 
    pt.pizza_type_id = p.pizza_type_id
JOIN 
    order_details AS od
ON 
    od.pizza_id = p.pizza_id
ORDER BY 
    total_quantity DESC;