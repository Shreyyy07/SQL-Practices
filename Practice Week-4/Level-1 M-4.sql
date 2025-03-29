SELECT s.screen_id AS `screen_id`, COUNT(seat.seat_id) AS `capacity`
FROM screen s
LEFT JOIN seat ON s.screen_id = seat.screen_id
GROUP BY s.screen_id
ORDER BY s.screen_id;
