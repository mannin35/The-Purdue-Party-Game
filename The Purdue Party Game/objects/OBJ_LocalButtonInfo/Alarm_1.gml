/// @CPU Button decision making
// Currently just pressed roll dice
OBJ_RollDiceButton.current = false;
audio_play_sound(SFX_Dice, 2, false);
player = global.localPlayers[global.currentplayer];
instance_create_layer(player.x , player.y - 25, layer, OBJ_Dice);
randomize();
var delay = ceil(random_range(30, 60));
// random delay before rolling dice
alarm[2] = delay;