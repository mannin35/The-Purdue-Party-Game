//display scoreboard if button pressed
if (visible) {
	if(button_x && OBJ_ViewScoreboardButton.current){
		if(room == RM_LocalView) {
			show_message("Pressed");
		}
	} 

	//change current button to next/prev if needed
	if (self.current) {
		CheckChangeButton(self)
	}
}