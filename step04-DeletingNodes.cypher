
// Deleting Nodes but first detaching its Relationships
MATCH (t {name:"Joel Embiid"}) DETACH DELETE t;



// Deleting Relationship
MATCH (player:PLAYER{name:"James Harden"}) -[rel:TEAMMATES]-> (Teammate:PLAYER) DELETE rel;




MATCH (player:PLAYER {name:"Khris Middleton"}) -[rel:TEAMMATES]-> (Teammate:PLAYER) RETURN player,Teammate




// Deleting all Nodes and their Relationships
MATCH (n) DETACH DELETE (n);



// To delete with neo4j own `ID`
match (team:TEAM) where ID(team)=27 DELETE team;



// To delete with user given `ID`
match (t:TEAM{id:27}) DELETE t;


match (team:TEAM) where ID(team) = 4 OR ID(team) = 3 DETACH DELETE team;