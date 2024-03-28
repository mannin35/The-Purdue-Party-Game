/// @description Insert description here
// You can write your code in this editor
if(done){
	alarm[0] = -1;
	if(counterTwo < 250){
		counterTwo++;
	}
} else {
	counter++;
	if (room == RM_FinalResults) {
	alarm[0] = -1;
} else {
	alarm[0] = 1;
}
}



