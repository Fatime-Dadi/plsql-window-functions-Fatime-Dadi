-- STEP 1: First, get each game and the previous game's goals for the player.
-- STEP 2: Then, calculate the growth percentage based on those values.

SELECT 
    player_name,
    match_date,
    opponent,
    goals_current_game,
    goals_previous_game,
    
    -- Calculate the percentage growth from the previous game
    -- If there was no previous game or goals were 0, leave it blank (NULL)
    CASE
        WHEN goals_previous_game IS NULL THEN NULL
        WHEN goals_previous_game = 0 THEN NULL
        ELSE ROUND( ( (goals_current_game - goals_previous_game) / goals_previous_game ) * 100, 2 )
    END AS growth_percentage

FROM (
    -- This inner query gets the main data and the lagged value
    SELECT
        p.player_name,
        perf.match_date,
        opp.team_name AS opponent,
        perf.goals AS goals_current_game,
        LAG(perf.goals, 1) OVER (
            PARTITION BY perf.player_id 
            ORDER BY perf.match_date
        ) AS goals_previous_game -- Gets the goals from the player's previous game
    FROM player_performance perf
    JOIN players p ON perf.player_id = p.player_id
    JOIN teams opp ON perf.opponent_team_id = opp.team_id
    WHERE p.player_name = 'Cole Palmer'
) AS player_stats

ORDER BY match_date; -- Order the final results by date