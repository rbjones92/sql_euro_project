# Write a SQL query to find the match number, date, and score for matches in which no
# stoppage time was added in the 1st half

SELECT match_no,
play_date,
goal_score,
stop1_sec
FROM match_mast
WHERE stop1_sec = 0;

# 4	2016-06-12	01-Jan	0