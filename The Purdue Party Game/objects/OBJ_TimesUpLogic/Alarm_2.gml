/// @description Insert description here
// You can write your code in this editor
 // timer appears if player isnt done
	
for (i = 0; i < 4; i++) {
	if (!players[i].over) {
		players[i].timer.visible = true;
	}
	else {
		players[i].timer.visible = false;
	}
}
if (timer != 0) {
	timer--;
	show_debug_message("Timer = " + string(timer));
	for (i = 0; i < 4; i++) {
		players[i].timer.image_index = timer; // Subtract from timers
	}
}
else { // if the player isnt done by the end of the timer they get last
	endGame();
}
alarm[2] = 60;