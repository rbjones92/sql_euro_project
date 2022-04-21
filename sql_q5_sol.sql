# Write a SQL query to find the number of bookings that happened in stoppage time.

SELECT COUNT(play_schedule)
FROM player_booked
WHERE play_schedule = 'ST';

# 10