# Write a SQL query that returns the total number of goals scored by each position on
# each country’s team. Do not include positions which scored no goals.


SELECT COUNT(gd.goal_id) as num_goals, pm.posi_to_play, sc.country_name
FROM goal_details as gd
INNER JOIN 
player_mast as pm
ON gd.player_id = pm.player_id
INNER JOIN 
soccer_country as sc
ON pm.team_id= sc.country_id 
GROUP BY country_name,posi_to_play
ORDER BY country_name, posi_to_play

/*1	FD	Albania
1	MF	Austria
1	DF	Belgium
3	FD	Belgium
5	MF	Belgium
1	FD	Croatia
4	MF	Croatia
2	FD	Czech Republic
3	FD	England
1	MF	England
9	FD	France
4	MF	France
1	DF	Germany
3	FD	Germany
3	MF	Germany
4	FD	Hungary
1	MF	Hungary
2	DF	Iceland
4	FD	Iceland
3	MF	Iceland
2	DF	Italy
3	FD	Italy
1	MF	Italy
2	DF	Northern Ireland
1	FD	Northern Ireland
2	FD	Poland
2	MF	Poland
8	FD	Portugal
1	MF	Portugal
1	DF	Republic of Ireland
3	MF	Republic of Ireland
2	FD	Romania
1	DF	Russia
1	MF	Russia
3	MF	Slovakia
1	DF	Spain
4	FD	Spain
1	DF	Switzerland
1	FD	Switzerland
1	MF	Switzerland
1	FD	Turkey
1	MF	Turkey
2	DF	Wales
6	FD	Wales
1	MF	Wales
/*