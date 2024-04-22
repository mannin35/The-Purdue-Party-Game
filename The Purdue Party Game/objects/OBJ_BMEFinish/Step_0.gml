/// @description Insert description here
// You can write your code in this editor
finishcount = 0;

if(Inst_Player1.over) {
	finishcount++;	
}
if(Inst_Player2.over) {
	finishcount++;	
}
if(Inst_Player3.over) {
	finishcount++;	
}
if(Inst_Player4.over) {
	finishcount++;	
}

if(finishcount>=3) {
	
	Obj_Demo.visible = false;
	global.minigameOver = 1;	
	global.localPlayers[0].visible = true; // bugfix!!!
global.localPlayers[1].visible = true;
global.localPlayers[2].visible = true;
global.localPlayers[3].visible = true;
}