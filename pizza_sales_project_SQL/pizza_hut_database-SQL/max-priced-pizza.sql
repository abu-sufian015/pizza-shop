-- Identify the highest-priced pizza.

-- 1st solution

-- SELECT 
--     pt.name, p.price
-- FROM
--     pizza_types AS pt
--         JOIN
--     pizzas AS p 
-- ON pt.pizza_type_id = p.pizza_type_id
-- ORDER BY p.price DESC
-- LIMIT 1;

-- 2nd solution

SELECT 
    pt.name, max(p.price) as max_price
FROM
    pizza_types AS pt
        JOIN
    pizzas AS p 
ON pt.pizza_type_id = p.pizza_type_id
group by pt.name
order by max_price desc
LIMIT 1;