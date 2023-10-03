
// Deleting Nodes but first detaching its Relationships
MATCH (t {name:"Joel Embiid"}) DETACH DELETE t;


name: Kevin Durant

// Deleting Relationship
MATCH (player:PLAYER{name:"James Harden"}) -[rel:TEAMMATES]-> (Teammate:PLAYER) DELETE rel;




MATCH (player:PLAYER {name:"Khris Middleton"}) -[rel:TEAMMATES]-> (Teammate:PLAYER) RETURN player,Teammate