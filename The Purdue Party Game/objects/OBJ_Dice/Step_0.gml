/// @Check for input
index = 0;
var button_x =(keyboard_check_pressed(vk_space)) || 
		(gamepad_button_check_pressed(global.playercontrollerindices[index],gp_face1));
if (button_x) {
	/// @Stop dice from rolling
	image_speed = 0; 
	if(global.doubleDice){
		alarm[0] = 60;
	} else {
	alarm[0] = 30;
	}
}



















