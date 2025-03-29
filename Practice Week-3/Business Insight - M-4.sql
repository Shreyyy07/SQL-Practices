SELECT 
    u.user_id AS "User ID",
    u.name AS "Name",
    DATE(b.booking_datetime) AS "Booking Date",
    COUNT(b.booking_id) AS "Number of Bookings"
FROM 
    booking b
JOIN 
    user u ON b.user_id = u.user_id
GROUP BY 
    u.user_id, u.name, DATE(b.booking_datetime)
HAVING 
    COUNT(b.booking_id) > 1
ORDER BY 
    "Booking Date", "Number of Bookings" DESC;
