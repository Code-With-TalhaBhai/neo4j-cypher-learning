// COUNT--> To check, how many relationship it has:
MATCH (player:PLAYER) -[played:PLAYED_AGAINST]-> (team:TEAM)
RETURN player.name as Name, COUNT(played);



// AVG--> Average func to return average of all queried nodes property
MATCH (player:PLAYER) -[played:PLAYED_AGAINST]-> (team:TEAM)
RETURN player.name as Name, AVG(played.points);


// SUM --> To return sum of all Quried Nodes Property
MATCH (player:PLAYER) -[played:PLAYED_AGAINST]-> (team:TEAM)
RETURN player.name as Name, SUM(played.points) AS All_Points;