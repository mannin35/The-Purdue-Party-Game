/// @description Insert description here
// You can write your code in this editor

if(global.minigameOver == false) {
	if(instance_exists(Obj_Demo)) {
		Obj_Demo.visible = false;
	}
	global.minigameOver = true;
	global.localPlayers[0].visible = true; // bugfix!!!
global.localPlayers[1].visible = true;
global.localPlayers[2].visible = true;
global.localPlayers[3].visible = true;
}




