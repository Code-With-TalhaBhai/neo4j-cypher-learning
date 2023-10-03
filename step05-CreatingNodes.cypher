CREATE (player:PLAYER:COACH:GENERAL_MANAGER {name:"Talha",height:"6.2",weight:"74"}) RETURN player


CREATE (team:TEAM {name:"Programmer",type:"Developmeent"}) RETURN team;


MATCH (player:PLAYER{name:"Talha"}) -[:plays_for{matches:"23",salary:45345438}]-> (team:TEAM) RETURN player;




MATCH (player:PLAYER{name:"Talha"})
MATCH (team:TEAM{name:"Programmer"})
CREATE (player)-[:PLAYS_FOR{matches:234,salary:1000000}]->(team)
RETURN player,team;