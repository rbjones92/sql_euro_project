#  Write a SQL query to find the number of captains who were also goalkeepers

SELECT COUNT(DISTINCT(player_captain)) AS num_captain_GKs
FROM match_captain AS mc
INNER JOIN
match_details AS md
ON mc.player_captain = md.player_gk

# 4