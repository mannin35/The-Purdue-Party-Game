// @description Sets initial state of scoreboard button
current = false;
is_next = false;
dead_zone = 0.2;
left_key= false;
right_key = false;
button_x = false;
prev = OBJ_ViewMapButton;
next = OBJ_RollDiceButton;

if (global.isStartOfGame) {
	visible = true;
} else {
	visible = false;
}