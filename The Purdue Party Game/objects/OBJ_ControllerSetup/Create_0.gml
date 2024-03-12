/// @description Insert description here
// You can write your code in this editor

//global.playercontrollerindices[0] = -1;

global.playercontrollerindices = [-1,-1,-1,-1];
controllercount = 0;
for(i=0;i<8;i++) 
{
	if(gamepad_is_connected(i)) {
		global.playercontrollerindices[controllercount] = i;	
		controllercount++;
	}
}