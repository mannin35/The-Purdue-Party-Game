/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(current) {
	image_index = 1;	
}
else {
	image_index = 0;	
}

var dead_zone = .2;

//var button_x = gamepad_button_check_pressed(global.playercontrollerindices[0], gp_face1);
var button_x =  gamepad_button_check_pressed(global.playercontrollerindices[0], gp_face1);

if(button_x){
	instance_destroy(OBJ_Player);
	instance_destroy(OBJ_Player1Local);
	instance_destroy(OBJ_Player2Local);
	instance_destroy(OBJ_Player3Local);
	instance_destroy(OBJ_Player4Local);
	instance_destroy(OBJ_PlayerInfo);
	instance_destroy(OBJ_CurrentPlayerTracker);	
}

if(!instance_exists(OBJ_Transition) && button_x) {
	var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
	inst.target_rm = RM_Title;
}
