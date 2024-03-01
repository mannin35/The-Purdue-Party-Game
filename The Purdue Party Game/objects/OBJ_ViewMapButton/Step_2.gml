//change rooms to full map view if button pressed
if (visible) {
	if(button_x && current){
		OBJ_ViewScoreboardButton.current = false;
		current = false;
		room_goto(RM_MainMap);
	}

	//change current button to next/prev if needed
	if (self.current) {
		CheckChangeButton(self)
	}
}