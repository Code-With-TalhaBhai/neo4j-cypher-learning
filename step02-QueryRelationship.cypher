
MATCH (player:PLAYER) -[:PLAYS_FOR]-> (team:TEAM)
RETURN player;



MATCH (player:PLAYER) -[:PLAYS_FOR]-> (team:TEAM)
WHERE team.name = "Dallas Mavericks"
RETURN player;




MATCH (player:PLAYER) -[contract:PLAYS_FOR]-> (team:TEAM)
WHERE contract.salary >= 30000000
RETURN player,team;




MATCH (player:PLAYER) -[:TEAMMATES]-> (teamMate:PLAYER)
RETURN teamMate;



// Same as below
MATCH (player:PLAYER) -[:TEAMMATES]-> (teamMate:PLAYER) -[contract:PLAYS_FOR]->(team:TEAM)
RETURN player.name as Player_name, contract.salary as Player_Salary;

// Same as above
MATCH (player:PLAYER) -[:TEAMMATES]-> (teamMate:PLAYER)
MATCH (teamMate) -[contract:PLAYS_FOR]-> (team:TEAM)
RETURN player.name as Player_name, contract.salary as Player_Salary;