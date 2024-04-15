/// @description Insert description here
// You can write your code in this editor


x += spd * dir
if (x >= 1040) {
	if (alarm_get(0) < 0) {
		alarm[0] = respawn_time;
	}
}
if (x <= -16) {
	if (alarm_get(1) < 0) {
		alarm[1] = respawn_time;
	}
}










