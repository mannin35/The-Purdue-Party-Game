//change rooms to full map view if button pressed
if (visible) {
	if(button_x && current){
		OBJ_ViewScoreboardButton.current = false;
		current = false;
		//transition to RM_MainMap
		//room_goto(RM_MainMap);
		if(!instance_exists(OBJ_Transition)) {
			var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
			inst.target_rm = RM_MainMap;
		}
	}

	//change current button to next/prev if needed
	if (OBJ_ViewMapButton.current) {
		CheckChangeButton(OBJ_ViewMapButton)
	}
}