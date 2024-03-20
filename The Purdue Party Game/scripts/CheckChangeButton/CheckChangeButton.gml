// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Check if current button needs to be moved left or right
function CheckChangeButton(button){
	if(OBJ_ItemMenu.visible == false){
	if(button.right_key && button.current) {
		//switch active button to next
		button.current = false;
		button.image_index = 0;
		button.next.is_next = true;
		global.delayInput = true;
		OBJ_LocalButtonInfo.alarm[0] = 15;
	}

	if(button.left_key && button.current) {
	//switch active button to previous
	button.current = false;
	button.image_index = 0;
	button.prev.is_next = true;
	global.delayInput = true;
	OBJ_LocalButtonInfo.alarm[0] = 15;
	}
	}
}