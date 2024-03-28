/// @description Insert description here
// You can write your code in this editor
//show_debug_message("Counter: {0}", counter)

if (room == RM_FinalResults) {
	OBJ_FinalPopUp.visible = false;
	OBJ_Accolade1.visible = false;
	OBJ_Accolade2.visible = false;
	OBJ_Accolade3.visible = false;
	OBJ_Accolade4.visible = false;
	OBJ_LilPlayerPopUp1.visible = false;
	OBJ_LilPlayerPopUp2.visible = false;
	OBJ_LilPlayerPopUp3.visible = false;
	OBJ_LilPlayerPopUp4.visible = false;
}

if(counter >= 0){
	if(counter == 0){
		//show_debug_message("Once")
		for(var l = 0; l < 4; l++){
				OBJ_MGPlacementOne.boilerBuckArray[l]++;
		
		}	
	} else if (counter == 4 || counter == 8){
		for(var l = 0; l < 4; l++){
			if(OBJ_MGPlacementOne.tempArray[l]  < 4){
				OBJ_MGPlacementOne.boilerBuckArray[l]++;
			}
		}	
	} else if (counter == 12 || counter == 16){
		for(var l = 0; l < 4; l++){
			if(OBJ_MGPlacementOne.tempArray[l] <3 ){
				OBJ_MGPlacementOne.boilerBuckArray[l]++;	
			}
		}	
	} else if (counter == 20 || counter == 24 || counter == 28 || counter == 32 || counter == 36){
		for(var l = 0; l < 4; l++){
			if(OBJ_MGPlacementOne.tempArray[l] < 2){
				OBJ_MGPlacementOne.boilerBuckArray[l]++;	
			}
		}	
	} else if (counter > 37) {
		done = true;
	}
}





