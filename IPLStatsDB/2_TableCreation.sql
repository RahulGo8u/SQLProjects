-- Create table: teams
CREATE TABLE teams (
    team_id INT AUTO_INCREMENT PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL
);

-- Create table: players
CREATE TABLE players (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    player_name VARCHAR(100) NOT NULL,
    role ENUM('Batsman', 'Bowler', 'All-Rounder', 'Wicket-Keeper') NOT NULL,
    team_id INT NOT NULL,
    nationality VARCHAR(50),
    FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

-- Create table: matches
CREATE TABLE matches (
    match_id INT AUTO_INCREMENT PRIMARY KEY,
    match_date DATE NOT NULL,
    venue VARCHAR(150) NOT NULL,
    team1_id INT NOT NULL,
    team2_id INT NOT NULL,
    winner_team_id INT,
    FOREIGN KEY (team1_id) REFERENCES teams(team_id),
    FOREIGN KEY (team2_id) REFERENCES teams(team_id),
    FOREIGN KEY (winner_team_id) REFERENCES teams(team_id)
);

-- Create table: player_performance
CREATE TABLE player_performance (
    performance_id INT AUTO_INCREMENT PRIMARY KEY,
    match_id INT NOT NULL,
    player_id INT NOT NULL,
    runs_scored INT DEFAULT 0,
    wickets_taken INT DEFAULT 0,
    balls_faced INT DEFAULT 0,
    overs_bowled DECIMAL(4,1) DEFAULT 0.0,
    fours INT DEFAULT 0,
    sixes INT DEFAULT 0,
    FOREIGN KEY (match_id) REFERENCES matches(match_id),
    FOREIGN KEY (player_id) REFERENCES players(player_id)
);
