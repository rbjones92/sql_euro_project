# Write a SQL query to find the number of matches that were won by penalty shootout.


SELECT
COUNT(win_lose),
decided_by
FROM match_details
WHERE win_lose = 'W' and decided_by = 'P';

# 3	P