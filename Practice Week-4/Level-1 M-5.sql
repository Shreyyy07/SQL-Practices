SELECT u.user_id AS `user_id`, u.name AS `user_name`, COUNT(b.booking_id) AS `total_bookings`
FROM user u
LEFT JOIN booking b ON u.user_id = b.user_id
WHERE u.user_id = 101
GROUP BY u.user_id, u.name;
