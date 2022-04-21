# Write a SQL query to find the highest number of foul cards given in one match

SELECT SUM(COUNT(match_no)) OVER (PARTITION BY match_no) AS bookings
FROM player_booked
GROUP BY match_no
ORDER BY bookings DESC
LIMIT 1

# 10