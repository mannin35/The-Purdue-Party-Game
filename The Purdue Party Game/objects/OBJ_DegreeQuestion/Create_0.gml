/// Set current player and bool for alarms
currentPlayer = global.localPlayers[global.currentplayer];
alarmsSet = false;
degree = OBJ_DegreeLocal;
buyIndex = 0;
cost = 25;
permanent = false;
if (currentPlayer.space == Space106) {
	//Permanent degree in stadium
	cost = 10;
	permanent = true;
	buyIndex = 2;
}