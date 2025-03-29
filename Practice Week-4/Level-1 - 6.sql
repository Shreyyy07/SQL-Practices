SELECT seat_id, seat_number
FROM seat
WHERE screen_id = (
    SELECT screen_id 
    FROM `show`
    WHERE show_id = 3
);
