SELECT mc.person_name AS cast_member_name, mc.role
FROM moviecast mc
JOIN movie m ON mc.movie_id = m.movie_id
WHERE m.title = 'Avatar';
