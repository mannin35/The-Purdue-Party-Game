/// @Class for keeping track of player information
global.currentplayer = 0;
global.localPlayers = [OBJ_Player1Local, OBJ_Player2Local, OBJ_Player3Local, OBJ_Player4Local];
global.fullPlayers = [OBJ_Player1Full, OBJ_Player2Full, OBJ_Player3Full, OBJ_Player4Full];
global.fromStore = false;
playerSpaces = [Space0, Space0, Space0, Space0];
end_of_round = false;
last_minigame = -1;
minigame = -1;
test_case = 0;
occured = false;
skipMG = false;
disableCPU = false;
global.isStartOfGame = true;
