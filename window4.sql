SELECT 
    player_name,
    team_name,
    avg_rating,
    NTILE(4) OVER (ORDER BY avg_rating DESC) AS performance_quartile,
    ROUND(CUME_DIST() OVER (ORDER BY avg_rating), 3) AS cumulative_distribution
FROM (
    SELECT
        p.player_name,
        t.team_name,
        ROUND(AVG(perf.player_rating), 2) AS avg_rating
    FROM player_performance perf
    JOIN players p ON perf.player_id = p.player_id
    JOIN teams t ON p.team_id = t.team_id
    GROUP BY p.player_id, p.player_name, t.team_name
) AS player_ratings
ORDER BY performance_quartile, avg_rating DESC;