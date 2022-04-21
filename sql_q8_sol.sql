# Write a SQL query to find the match number for the game with the highest number of
# penalty shots, and which countries played that match.

SELECT ps.kick_no as penalty_kicks, ps.team_id, sc.country_id as id, sc.country_name
FROM penalty_shootout AS ps
INNER JOIN
soccer_country as sc 
ON ps.team_id = sc.country_id
ORDER BY kick_no DESC
LIMIT 2;

# 18	1208	1208	Germany
# 17	1211	1211	Italy