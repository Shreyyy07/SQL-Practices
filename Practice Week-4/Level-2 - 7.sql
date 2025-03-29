SELECT sh.show_datetime
FROM `show` sh
JOIN movie m ON sh.movie_id = m.movie_id
WHERE m.title = 'Guru';
