/// @description Insert description here
// You can write your code in this editor

if(controllercount == 0) {
	
	show_message("Please connect at least one controller to play");	
	
	//check again for controllers
	for(i=0;i<8;i++) 
	{
		if(gamepad_is_connected(i)) {
			global.playercontrollerindices[controllercount] = i;	
			controllercount++;
		}
	}

}




