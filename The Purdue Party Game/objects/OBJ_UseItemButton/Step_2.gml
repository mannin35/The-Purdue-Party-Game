//TODO Implement using items
if(button_x && OBJ_UseItemButton.current){
	if(room == RM_LocalView) {
		show_message("Pressed");
	}
} 

//change current button to next/prev if needed
if (self.current) {
	CheckChangeButton(self)
}