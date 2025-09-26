-- Objective: Demonstrate SUM, AVG, MIN, MAX with ROWS vs RANGE framing.
-- This query analyzes a player's performance over a rolling 3-game window, showing the difference between ROWS and RANGE.

SELECT
    p.player_name,
    perf.match_date,
    opp.team_name as opponent,
    perf.goals,
    perf.player_rating,
    
    -- 1. SUM: Running total of goals (Using ROWS)
    SUM(perf.goals) OVER (
        PARTITION BY perf.player_id
        ORDER BY perf.match_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total_goals,
    
    -- 2. AVG: 3-Game Moving Average rating (Using ROWS)
    ROUND(AVG(perf.player_rating) OVER (
        PARTITION BY perf.player_id
        ORDER BY perf.match_date
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ), 2) AS moving_avg_rating_rows,
    
    -- 3. MIN: Worst rating in the last 3 games (Using ROWS)
    MIN(perf.player_rating) OVER (
        PARTITION BY perf.player_id
        ORDER BY perf.match_date
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS min_rating_last_3_rows,
    
    -- 4. MAX: Best rating in the last 3 games (Using ROWS)
    MAX(perf.player_rating) OVER (
        PARTITION BY perf.player_id
        ORDER BY perf.match_date
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS max_rating_last_3_rows,

    -- 5. AVG: Demonstrate RANGE vs ROWS (This would be meaningful if we had tied dates)
    -- For a true RANGE example, we need a different ordering. Let's use goals to show the concept.
    ROUND(AVG(perf.player_rating) OVER (
        PARTITION BY perf.player_id
        ORDER BY perf.goals -- Ordering by goals to create potential ties
        RANGE BETWEEN 1 PRECEDING AND 1 FOLLOWING -- Looks at rows with goal values within 1 of the current row's goals
    ), 2) AS avg_rating_similar_goals_range

FROM player_performance perf
JOIN players p ON perf.player_id = p.player_id
JOIN teams opp ON perf.opponent_team_id = opp.team_id
WHERE p.player_name = 'Erling Haaland'
ORDER BY perf.match_date;