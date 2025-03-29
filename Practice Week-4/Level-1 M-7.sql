SELECT 
    foi.order_id,
    SUM(foi.quantity) AS total_items_ordered
FROM foodorderitem foi
WHERE foi.order_id = 201
GROUP BY foi.order_id;
