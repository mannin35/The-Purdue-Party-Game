// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BMECPU(difficulty){
	randomize();
	if(difficulty == 0){				//Easy
		x += 5;
		alarm[0] = irandom_range(17,22)
	} else if(difficulty == 1){			//Medium
		x += 5;
		alarm[0] = irandom_range(10,20)
	} else {							//Hard
		x += 5;
		alarm[0] = irandom_range(5,11)
	}
}