/// Degree and player collision
if (!OBJ_Player.degreeCollided) {
	currentPlayer = global.localPlayers[global.currentplayer];
	OBJ_Player.waitForDegree = true;
	OBJ_Player.degreeCollided = true;
	currentPlayer.image_speed = 0;
	currentPlayer.speed = 0;
	instance_create_layer(x, y, OBJ_Scoreboard.layer, OBJ_DegreeQuestion);
}