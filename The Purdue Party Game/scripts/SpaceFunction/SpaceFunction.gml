// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpaceFunction(type){
	if(type == "store"){
		if(global.playercontrollerindices[global.currentplayer] != -1 && global.currentplayer < global.realPlayerCount){
			room_goto(RM_Store)	
		}
	} 
	//Add else statements to help with what you want the space to do and make up your own keywords
	//Set spaceType in each space to represent the type of space you have and in the if, add what you want
	//to happen in the event the player ends on that space
}