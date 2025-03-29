SELECT 
    fi.item_id,
    fi.name,
    SUM(foi.price_at_time * foi.quantity) AS total_sales,
    SUM(foi.quantity) AS total_orders
FROM foodorderitem AS foi
JOIN fooditem AS fi ON foi.item_id = fi.item_id
GROUP BY fi.item_id, fi.name
ORDER BY total_sales DESC;
