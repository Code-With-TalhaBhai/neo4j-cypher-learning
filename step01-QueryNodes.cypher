

MATCH (n) REQUIRE (n) -----> Get All Nodes with their Relationships


// Query All Nodes and Match `name` property and return
MATCH (t {name:"Joel Embiid"}) RETURN t;


// Query all `PLAYER` nodes
MATCH (player:PLAYER) RETURN player

// Query all   `PLAYER` nodes property  `name`
MATCH (player:PLAYER) RETURN player.name as Name;


MATCH (player:PLAYER)
RETURN player.name as Name, player.weight as Weight;


// Query all `PLAYER` with `name` `Luka Doncic`
MATCH (player:PLAYER) 
WHERE player.name = "Luka Doncic"
RETURN player;


MATCH (player:PLAYER{name:"Luka Doncic"}) RETURN player;


MATCH (player:PLAYER) 
WHERE player.weight >= 100
RETURN player; 


// Query all `Player` whose `name` not equal to `James Harden`
MATCH (player:PLAYER) 
WHERE player.name <> "James Harden"
RETURN player;


MATCH (player:PLAYER) WHERE (player.weight * 2) < 200 RETURN player;


// Query all `Player` whose `weight` less than '100' and `age` less than equal to '30'
MATCH (player:PLAYER) WHERE player.weight < 100 AND player.age <= 30  RETURN player;


MATCH (player:PLAYER) WHERE player.weight < 100 OR player.age <= 22  RETURN player;


MATCH (player:PLAYER) WHERE player.weight < 100 OR player.age <= 30  RETURN player LIMIT 2;


MATCH (player:PLAYER) WHERE player.weight < 100 OR player.age <= 30  RETURN player SKIP 2 LIMIT 4;


// SKIP AND LIMIT should be at last
MATCH (player:PLAYER) WHERE player.weight < 100 OR player.age <= 30  RETURN player ORDER BY player.height DESC SKIP 2 LIMIT 4;


// Give warning but Okay
MATCH (player:PLAYER),(coach:COACH),(movie:Movie)
RETURN player,coach,movie