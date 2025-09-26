-- Objective: Demonstrate all ranking functions on player performance.
-- This query ranks players based on their average match rating, showing different ranking methods.
SELECT
    player_name,
    team_name,
    avg_rating,
    ROW_NUMBER() OVER (ORDER BY avg_rating DESC) as row_num_rank, -- Unique sequential number
    RANK() OVER (ORDER BY avg_rating DESC) as comp_rank, -- Standard competition ranking (gaps)
    DENSE_RANK() OVER (ORDER BY avg_rating DESC) as dense_rank, -- Ranking without gaps
    ROUND(PERCENT_RANK() OVER (ORDER BY avg_rating DESC), 2) as percentile_rank -- % of players with a lower rating
FROM (
    SELECT
        p.player_name,
        t.team_name,
        ROUND(AVG(perf.player_rating), 2) AS avg_rating
    FROM player_performance perf
    JOIN players p ON perf.player_id = p.player_id
    JOIN teams t ON p.team_id = t.team_id
    GROUP BY p.player_name, t.team_name
    HAVING COUNT(perf.performance_id) >= 3 -- Ensure a minimum number of games for a fair rating
) AS player_ratings
ORDER BY comp_rank;