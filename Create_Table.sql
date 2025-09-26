-- Table to store team information
CREATE TABLE teams (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(50) NOT NULL,
    stadium VARCHAR(50),
    manager VARCHAR(50)
);

-- Table to store player information
CREATE TABLE players (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(50) NOT NULL,
    team_id INT NOT NULL,
    position VARCHAR(20),
    market_value_eur DECIMAL(15, 2),
    CONSTRAINT fk_team FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

-- Table to store match performance data (the fact table)
CREATE TABLE player_performance (
    performance_id INT PRIMARY KEY,
    player_id INT NOT NULL,
    match_date DATE NOT NULL,
    opponent_team_id INT NOT NULL,
    minutes_played INT,
    goals INT,
    assists INT,
    player_rating DECIMAL(4,2), -- e.g., 7.82
    CONSTRAINT fk_player FOREIGN KEY (player_id) REFERENCES players(player_id),
    CONSTRAINT fk_opponent FOREIGN KEY (opponent_team_id) REFERENCES teams(team_id)
);