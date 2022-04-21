# Write a SQL query to find the goalkeeper’s name and jersey number, playing for
# Germany, who played in Germany’s group stage matches.

# 1208 = Germany

SELECT DISTINCT match_details.play_stage, pm.jersey_no, sc.country_name, pm.player_name
FROM match_details
INNER JOIN
soccer_country as sc
ON match_details.team_id = sc.country_id
INNER JOIN
player_mast as pm
ON match_details.player_gk = pm.player_id
WHERE play_stage = 'G' AND country_id = 1208

# G 1	Germany	Manuel Neuer