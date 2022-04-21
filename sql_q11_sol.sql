# Write a SQL query to find the players, their jersey number, and playing club who were
# the goalkeepers for England in EURO Cup 2016.

SELECT DISTINCT pm.player_name, pm.jersey_no, pm.playing_club, sc.country_name, pm.posi_to_play
FROM match_details as md
INNER JOIN
soccer_country as sc
ON md.team_id = sc.country_id
INNER JOIN
player_mast as pm
ON md.team_id = pm.team_id
WHERE country_name = 'ENGLAND' AND posi_to_play = 'GK'

/*
Tom Heaton	23	Burnley	England	GK
Fraser Forster	13	Southampton	England	GK
Joe Hart	1	Man. City	England	GK
*/