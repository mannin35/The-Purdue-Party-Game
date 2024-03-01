//display scoreboard if button pressed
if (visible) {
	if(button_x && OBJ_ViewScoreboardButton.current){
		if(room == RM_LocalView) {
			OBJ_Scoreboard.visible = true;
		}
	} 

	//change current button to next/prev if needed
	if (self.current) {
		CheckChangeButton(self)
	}
}