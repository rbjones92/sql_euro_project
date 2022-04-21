# Write a SQL query to find the referees who booked the most number of players

SELECT DISTINCT(referee_name),bookings

FROM (
SELECT pb.match_no, count(pb.match_no) AS bookings, rm.referee_name
FROM player_booked AS pb
INNER JOIN
referee_mast as rm
ON pb.team_id = rm.country_id
GROUP BY match_no
ORDER BY bookings DESC
) sub;

/*
Carlos Velasco Carballo	7
Felix Brych	6
Cuneyt Cakir	5
Nicola Rizzoli	5
Ovidiu Hategan	4
Clement Turpin	4
Viktor Kassai	4
Nicola Rizzoli	4
Mark Clattenburg	3
Cuneyt Cakir	3
Nicola Rizzoli	3
Ovidiu Hategan	3
Szymon Marciniak	3
Viktor Kassai	3
Carlos Velasco Carballo	3
Szymon Marciniak	2
Mark Clattenburg	2
Clement Turpin	2
Felix Brych	2
Pavel Kralovec	1
Jonas Eriksson	1
Viktor Kassai	1
Clement Turpin	1
Szymon Marciniak	1
Sergei Karasev	1
/*
