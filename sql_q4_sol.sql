# Write a SQL query to compute a list showing the number of substitutions that
# happened in various stages of play for the entire tournament

SELECT DISTINCT match_mast.play_stage,
COUNT(*) OVER(PARTITION BY match_mast.play_stage) AS num_subs
FROM player_in_out
INNER JOIN match_mast
WHERE match_mast.match_no = player_in_out.match_no AND in_out = 'I';

/*
F	6
G	208
Q	22
R	45
S	12
/*