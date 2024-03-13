 //TODO Implement using items
if (visible) {
	if(button_x && OBJ_UseItemButton.current){
		if(room == RM_LocalView) {
			OBJ_ItemMenu.visible = true;
		}
	} 

	//change current button to next/prev if needed
	if (self.current) {
		CheckChangeButton(self)
	}
}