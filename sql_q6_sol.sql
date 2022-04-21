# Write a SQL query to find the number of matches that were won by a single point, but
# do not include matches decided by penalty shootout

WITH replaced AS
(
SELECT match_no, decided_by, REPLACE(goal_score,'-','') AS replaced_goals, results
FROM match_mast
),

replaced_2 AS (
SELECT match_no, decided_by, REGEXP_SUBSTR(replaced_goals,"[0-9][0-9]") AS goals, results
FROM replaced
WHERE decided_by != 'P' AND results = 'WIN'
),

replaced_3 AS (
SELECT match_no, decided_by, SUBSTRING(goals,1,1) AS goal_1, SUBSTRING(goals,2,1) AS goal_2, results
FROM replaced_2
),

replaced_4 AS (
SELECT match_no,decided_by,goal_1,goal_2,results
FROM replaced_3
WHERE ABS(goal_1 - goal_2) = 1
)

SELECT match_no,decided_by,goal_1,goal_2,results, COUNT(*) AS query_result
FROM replaced_4

# 1	N	0	1	WIN	20
