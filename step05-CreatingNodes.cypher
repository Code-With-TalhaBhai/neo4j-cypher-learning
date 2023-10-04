// Creating Single Node with Multiple labels `PLAYER,COACH, and GENERAL_MANAGER` with multiple properties `name,height and weight`
CREATE (player:PLAYER:COACH:GENERAL_MANAGER {name:"Talha",height:"6.2",weight:"74"}) RETURN player


CREATE (team:TEAM {name:"Programmer",type:"Developmeent"}) RETURN team;


// Creating Relationship `plays_for`with multiple properties between `PLAYER` and `TEAM`
MATCH (player:PLAYER{name:"Talha"})
 -[:plays_for{matches:"23",salary:45345438}]-> (team:TEAM)
RETURN player;



// Create Relationship `PLAYS_FOR` between existing Nodes `PLAYER` and `TEAM`
MATCH (player:PLAYER{name:"Talha"})
MATCH (team:TEAM{name:"Programmer"})
CREATE (player)-[:PLAYS_FOR{matches:234,salary:1000000}]->(team)
RETURN player,team;