//roll dice if button pressed
if(button_x && OBJ_RollDiceButton.current){
	if(room == RM_LocalView) {
		player = global.localPlayers[global.currentplayer];
		instance_create_layer(player.x , player.y - 25, layer, OBJ_Dice);
		current = false;
	}
} 

//change current button to next/prev if needed
if (self.current) {
	CheckChangeButton(self)
}





