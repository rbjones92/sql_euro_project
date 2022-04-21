# Write a SQL query to find the substitute players who came into the field in the first
# half of play, within a normal play schedule.

SELECT pm.player_id, pm.player_name
FROM player_mast AS pm
INNER JOIN
player_in_out AS pio
ON pm.player_id = pio.player_id
WHERE play_schedule = 'NT' AND play_half = 1 AND in_out = 'I'

/*
160180	Bastian Schweinsteiger
160321	Ricardo Quaresma
160444	Erik Johansson
*/