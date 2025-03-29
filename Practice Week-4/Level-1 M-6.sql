SELECT 
    fo.order_id, 
    fo.booking_id, 
    fo.screen_id, 
    fo.seat_id, 
    DATE_FORMAT(fo.order_datetime, '%d-%m-%Y') AS order_date,
    fo.total_cost, 
    fo.delivery_method
FROM foodorder fo
WHERE fo.booking_id = 201;
