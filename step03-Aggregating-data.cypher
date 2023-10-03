MATCH (player:PLAYER) -[played:PLAYED_AGAINST]-> (team:TEAM)
RETURN player.name as Name, COUNT(played);



MATCH (player:PLAYER) -[played:PLAYED_AGAINST]-> (team:TEAM)
RETURN player.name as Name, AVG(played.points);



MATCH (player:PLAYER) -[played:PLAYED_AGAINST]-> (team:TEAM)
RETURN player.name as Name, SUM(played.points) AS All_Points;