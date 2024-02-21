//roll dice if button pressed
if(button_x && OBJ_RollDiceButton.current){
	if(room == RM_LocalView) {
		show_message("Pressed");
	}
} 

//change current button to next/prev if needed
if (self.current) {
	CheckChangeButton(self)
}





