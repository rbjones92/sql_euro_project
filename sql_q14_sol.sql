# Write a SQL query to find referees and the number of bookings they made for the
# entire tournament. Sort your answer by the number of bookings in descending order

SELECT pb.match_no, count(pb.match_no) AS bookings, rm.referee_name
FROM player_booked AS pb
INNER JOIN
referee_mast as rm
ON pb.team_id = rm.country_id
GROUP BY match_no
ORDER BY bookings DESC

/*
43	7	Carlos Velasco Carballo
18	6	Felix Brych
50	6	Felix Brych
31	5	Cuneyt Cakir
47	5	Nicola Rizzoli
1	4	Ovidiu Hategan
51	4	Clement Turpin
14	4	Ovidiu Hategan
34	4	Viktor Kassai
35	4	Nicola Rizzoli
42	4	Viktor Kassai
10	4	Nicola Rizzoli
4	3	Mark Clattenburg
5	3	Cuneyt Cakir
19	3	Nicola Rizzoli
25	3	Ovidiu Hategan
45	3	Szymon Marciniak
23	3	Viktor Kassai
21	3	Carlos Velasco Carballo
6	2	Szymon Marciniak
28	2	Mark Clattenburg
40	2	Clement Turpin
41	2	Felix Brych
26	2	Clement Turpin
44	2	Mark Clattenburg
8	1	Pavel Kralovec
9	1	Jonas Eriksson
11	1	Viktor Kassai
15	1	Clement Turpin
20	1	Pavel Kralovec
29	1	Szymon Marciniak
36	1	Jonas Eriksson
37	1	Szymon Marciniak
48	1	Clement Turpin
27	1	Sergei Karasev
*/