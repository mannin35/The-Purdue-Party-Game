// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Check if current button needs to be moved left or right
function CheckChangeButton(button){
	if(button.right_key > button.dead_zone && button.current) {
		//switch active button to next
		button.current = false;
		button.image_index = 0;
		button.next.is_next = true;
	}

	if(button.left_key > button.dead_zone && button.current) {
	//switch active button to previous
	button.current = false;
	button.image_index = 0;
	button.prev.is_next = true;
	}
}