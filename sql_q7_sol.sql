# Write a SQL query to find all the venues where matches with penalty shootouts were played.

SELECT DISTINCT(match_no),venue_id,venue_name

FROM (
SELECT pen.match_no AS match_1, m.match_no, m.venue_id AS venue_1, s.venue_id,venue_name
FROM penalty_shootout AS pen
INNER JOIN 
match_mast as m
ON pen.match_no = m.match_no
INNER JOIN 
soccer_venue as s
ON m.venue_id = s.venue_id
) sub;

/*
37	20009	Stade Geoffroy Guichard
45	20005	Stade VElodrome
47	20001	Stade de Bordeaux
/*
