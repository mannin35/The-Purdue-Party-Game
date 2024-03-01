//display scoreboard if button pressed
if (visible) {
	if(gamepad_button_check(global.playercontrollerindices[0], gp_face1) && OBJ_ViewScoreboardButton.current){
		if(room == RM_LocalView) {
			OBJ_Scoreboard.visible = true;
		}
	}  else {
		if(room == RM_LocalView) {
			OBJ_Scoreboard.visible = false;
		}
	}


	//change current button to next/prev if needed
	if (self.current) {
		CheckChangeButton(self)
	}
}