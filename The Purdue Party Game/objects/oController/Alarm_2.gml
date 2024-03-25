/// @description Insert description here
// You can write your code in this editor


 // timer appears if player isnt done
	
	if !(player_one_TTT.over) {
		player_one_TTT.timer.visible = true;
	}
	if !(player_two_TTT.over) {
		player_two_TTT.timer.visible = true;
	}
	if !(player_three_TTT.over) {
		player_three_TTT.timer.visible = true;
	}
	if !(player_four_TTT.over) {
		player_four_TTT.timer.visible = true;
	}
	if (timer != 0) {
		timer--;
		show_debug_message("Timer = " + string(timer));
		player_one_TTT.timer.image_index = timer; // subtract from timers
		player_two_TTT.timer.image_index = timer;
		player_three_TTT.timer.image_index = timer;
		player_four_TTT.timer.image_index = timer;
	} else { // if the player isnt done by the end of the timer they get last
		player_one_TTT.over = true;
		player_two_TTT.over = true;
		player_three_TTT.over = true;
		player_four_TTT.over = true;
	}
	alarm[2] = 60;






