# Write a SQL query to find all the defenders who scored a goal for their teams.

SELECT gd.goal_id, pm.posi_to_play, sc.country_name, pm.player_name
FROM goal_details as gd
INNER JOIN 
player_mast as pm
ON gd.player_id = pm.player_id
INNER JOIN 
soccer_country as sc
ON pm.team_id= sc.country_id 
WHERE posi_to_play = 'DF'

/*
4	DF	Switzerland	Fabian Schar
9	DF	Russia	Vasili Berezutski
14	DF	Spain	Gerard Pique
16	DF	Republic of Ireland	Ciaran Clark
33	DF	Northern Ireland	Gareth McAuley
47	DF	Iceland	Birkir Saevarsson
50	DF	Wales	Neil Taylor
72	DF	Northern Ireland	Gareth McAuley
77	DF	Germany	Jerome Boateng
80	DF	Belgium	Toby Alderweireld
84	DF	Italy	Giorgio Chiellini
87	DF	Iceland	Arnor Ingvi Traustason
92	DF	Wales	Ashley Williams
96	DF	Italy	Leonardo Bonucci
*/