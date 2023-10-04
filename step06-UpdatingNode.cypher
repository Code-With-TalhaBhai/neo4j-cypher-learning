
// Updating Node with `id` given by `neo4j`
MATCH (PR:TEAM)
WHERE ID(PR) = 25
SET PR.name = "Coder"
RETURN PR;



// Updating multiple properties, and adding new property as well
MATCH (PR:TEAM)
WHERE ID(PR) = 25
SET PR.name = "CODER", PR.type = "Competitive Coder" , PR.level="Hard"
RETURN PR;



// Adding label as well
MATCH (PR:TEAM)
WHERE ID(PR) = 25
SET PR:FRANCHISE
RETURN PR;


// Updating relationship properties
MATCH (:PLAYER{name:"Talha"})-[contract:PLAYS_FOR]->(:TEAM)
SET contract.salary=400234230432


// Remove Node property
MATCH (player:PLAYER{name:"Talha"})
REMOVE player.secret;


// Updation-->Removing Node label
MATCH (team:TEAM{name:"CODER"})
REMOVE team:FRANCHISE;