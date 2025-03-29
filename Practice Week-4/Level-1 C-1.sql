SELECT 
    m.user_id,
    m.current_points AS total_loyalty_points
FROM 
    membership m
WHERE 
    m.user_id = 1;
