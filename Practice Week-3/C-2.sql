SELECT 
    u.user_id,
    u.name,
    SUM(b.total_cost) AS total_food_spending
FROM 
    booking b
JOIN 
    user u ON b.user_id = u.user_id
GROUP BY 
    u.user_id, u.name
ORDER BY 
    total_food_spending DESC
LIMIT 10;
