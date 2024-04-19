//roll dice if button pressed
if (visible) {
	if(button_x && OBJ_RollDiceButton.current){
		if(room == RM_LocalView) {
			audio_play_sound(SFX_Dice, 2, false);
			player = global.localPlayers[global.currentplayer];
			instance_create_layer(player.x , player.y - 25, layer, OBJ_Dice);
			current = false;
			button_x = false;
		}
	} 

	//change current button to next/prev if needed
	if (OBJ_RollDiceButton.current) {
		CheckChangeButton(OBJ_RollDiceButton)
	}
}





