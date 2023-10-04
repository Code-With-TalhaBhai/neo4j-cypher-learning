
// Query `PLAYER` who has relationship `PLAYS_FOR` for any of  `TEAM`;
MATCH (player:PLAYER) -[:PLAYS_FOR]-> (team:TEAM)
RETURN player;



MATCH (player:PLAYER) -[:PLAYS_FOR]-> (team:TEAM)
WHERE team.name = "Dallas Mavericks"
RETURN player;



// Query all `PLAYER` and `TEAM` whose relationship `PLAYS_FOR` property `salary` is more than '3000000'
MATCH (player:PLAYER) -[contract:PLAYS_FOR]-> (team:TEAM)
WHERE contract.salary >= 30000000
RETURN player,team;




MATCH (player:PLAYER) -[:TEAMMATES]-> (teamMate:PLAYER)
RETURN teamMate;



// Query dual relationship
// Same as below
MATCH (player:PLAYER) -[:TEAMMATES]-> (teamMate:PLAYER) -[contract:PLAYS_FOR]->(team:TEAM)
RETURN player.name as Player_name, contract.salary as Player_Salary;

// Same as above
MATCH (player:PLAYER) -[:TEAMMATES]-> (teamMate:PLAYER)
MATCH (teamMate) -[contract:PLAYS_FOR]-> (team:TEAM)
RETURN player.name as Player_name, contract.salary as Player_Salary;