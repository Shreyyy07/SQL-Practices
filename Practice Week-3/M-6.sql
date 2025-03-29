SELECT 
    s.show_id, 
    s.show_datetime, 
    COUNT(t.ticket_id) AS total_tickets_sold
FROM `show` AS s
JOIN `showseat` AS ss ON s.show_id = ss.show_id
JOIN `ticket` AS t ON ss.show_seat_id = t.show_seat_id
GROUP BY s.show_id, s.show_datetime
ORDER BY total_tickets_sold DESC;
