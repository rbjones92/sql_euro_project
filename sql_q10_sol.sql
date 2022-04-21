# SQL query to find all available information about the players under contract to
# Liverpool F.C. playing for England in EURO Cup 2016

SELECT pm.player_id, pm.team_id, pm.jersey_no, pm.player_name, pp.position_id, pp.position_desc, pm.dt_of_bir, pm.age, pm.playing_club
FROM 
player_mast AS pm
INNER JOIN
playing_position AS pp
ON pm.posi_to_play = pp.position_id
WHERE playing_club = 'Liverpool';

/*
160049	1203	12	Simon Mignolet	GK	Goalkeepers	1988-08-06	27	Liverpool
160069	1203	17	Divock Origi	FD	Defenders	1995-04-18	21	Liverpool
160066	1203	20	Christian Benteke	FD	Defenders	1990-12-03	25	Liverpool
160131	1206	4	James Milner	MF	Midfielders	1986-01-04	30	Liverpool
160130	1206	8	Adam Lallana	MF	Midfielders	1988-05-10	28	Liverpool
160121	1206	12	Nathaniel Clyne	DF	Defenders	1991-04-05	25	Liverpool
160129	1206	14	Jordan Henderson	MF	Midfielders	1990-06-17	26	Liverpool
160137	1206	15	Daniel Sturridge	FD	Defenders	1989-09-01	26	Liverpool
160172	1208	14	Emre Can	MF	Midfielders	1994-01-12	22	Liverpool
160401	1218	3	Martin Skrtel	DF	Defenders	1984-12-15	31	Liverpool
160540	1224	7	Joe Allen	MF	Midfielders	1990-03-14	26	Liverpool
160532	1224	21	Danny Ward	GK	Goalkeepers	1993-06-22	22	Liverpool
/*