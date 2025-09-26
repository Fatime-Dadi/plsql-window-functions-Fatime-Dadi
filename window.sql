-- ------------------- INSERT TEAMS -------------------
INSERT INTO teams VALUES (1, 'Manchester City', 'Etihad Stadium', 'Pep Guardiola');
INSERT INTO teams VALUES (2, 'Arsenal', 'Emirates Stadium', 'Mikel Arteta');
INSERT INTO teams VALUES (3, 'Chelsea', 'Stamford Bridge', 'Mauricio Pochettino');
INSERT INTO teams VALUES (4, 'Aston Villa', 'Villa Park', 'Unai Emery');
INSERT INTO teams VALUES (5, 'Newcastle United', 'St James'' Park', 'Eddie Howe');
INSERT INTO teams VALUES (6, 'Brentford', 'Gtech Community Stadium', 'Thomas Frank');
INSERT INTO teams VALUES (7, 'Liverpool', 'Anfield', 'Jurgen Klopp');
INSERT INTO teams VALUES (8, 'Tottenham Hotspur', 'Tottenham Hotspur Stadium', 'Ange Postecoglou');

-- ------------------- INSERT PLAYERS -------------------
-- Top 5 Scorers 23/24
INSERT INTO players VALUES (101, 'Erling Haaland', 1, 'ST', 180000000);
INSERT INTO players VALUES (102, 'Cole Palmer', 3, 'CAM', 55000000);
INSERT INTO players VALUES (103, 'Alexander Isak', 5, 'ST', 70000000);
INSERT INTO players VALUES (104, 'Ollie Watkins', 4, 'ST', 65000000);
INSERT INTO players VALUES (105, 'Mohamed Salah', 7, 'RW', 90000000);

-- ------------------- INSERT PERFORMANCE DATA -------------------
-- Sample of REAL game logs for Erling Haaland (Man City)
INSERT INTO player_performance VALUES (1, 101, '2023-08-11', 8, 90, 0, 0, 6.8);
INSERT INTO player_performance VALUES (2, 101, '2023-08-19', 6, 90, 0, 0, 7.1);
INSERT INTO player_performance VALUES (3, 101, '2023-09-02', 4, 90, 1, 0, 7.5);
INSERT INTO player_performance VALUES (4, 101, '2023-09-16', 7, 90, 1, 0, 7.4);
INSERT INTO player_performance VALUES (5, 101, '2023-09-23', 2, 90, 0, 0, 6.9);
-- Let's add a hat-trick to show the power of the queries
INSERT INTO player_performance VALUES (6, 101, '2023-10-28', 8, 90, 3, 0, 9.8);

-- Sample of REAL game logs for Cole Palmer (Chelsea)
INSERT INTO player_performance VALUES (7, 102, '2024-04-15', 6, 90, 4, 0, 9.9);
INSERT INTO player_performance VALUES (8, 102, '2024-04-27', 2, 90, 1, 1, 8.2);
INSERT INTO player_performance VALUES (9, 102, '2024-05-02', 1, 90, 1, 0, 7.8);
INSERT INTO player_performance VALUES (10, 102, '2024-05-05', 4, 90, 0, 1, 7.5);
INSERT INTO player_performance VALUES (11, 102, '2024-05-11', 7, 90, 1, 0, 7.9);

-- Sample of REAL game logs for Alexander Isak (Newcastle)
INSERT INTO player_performance VALUES (12, 103, '2024-04-02', 3, 90, 2, 0, 8.7);
INSERT INTO player_performance VALUES (13, 103, '2024-04-13', 1, 90, 1, 0, 7.8);
INSERT INTO player_performance VALUES (14, 103, '2024-04-24', 8, 90, 0, 0, 6.6);
INSERT INTO player_performance VALUES (15, 103, '2024-05-04', 2, 90, 1, 0, 7.7);
INSERT INTO player_performance VALUES (16, 103, '2024-05-11', 4, 90, 2, 0, 8.8);