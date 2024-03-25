/// Degree and player collision
currentPlayer = global.localPlayers[global.currentplayer];
OBJ_Player.waitForDegree = true;

currentPlayer.image_speed = 0;
currentPlayer.speed = 0;
instance_create_layer(x, y, layer, OBJ_DegreeQuestion);