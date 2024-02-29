/// @description Insert description here
// You can write your code in this editor
if(counter >= 0){
if(counter < 1){
	for(var l = 0; l < 4; l++){
		if(global.minigameResults[l] == 4){
			OBJ_MGPlacementOne.boilerBuckArray[l]++;
		}
	}	
} else if (counter < 3){
	for(var l = 0; l < 4; l++){
		if(global.minigameResults[l] == 4){
			OBJ_MGPlacementOne.boilerBuckArray[l]++;
		}
	}	
} else if (counter < 5){
	for(var l = 0; l < 4; l++){
		if(global.minigameResults[l] == 4){
			OBJ_MGPlacementOne.boilerBuckArray[l]++;	
		}
	}	
} else if (counter < 10){
	for(var l = 0; l < 4; l++){
		if(global.minigameResults[l] == 4){
			OBJ_MGPlacementOne.boilerBuckArray[l]++;	
		}
	}	
} else {
	done = true;
	alarm[0] = 1;
}
}




