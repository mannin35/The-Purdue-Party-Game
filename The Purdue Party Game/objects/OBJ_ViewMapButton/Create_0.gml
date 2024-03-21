/// @description initialize state of view map button
current = false;
is_next = false;
dead_zone = 0.2;
left_key= false;
right_key = false;
button_x = false;
prev = OBJ_UseItemButton;
next = OBJ_ViewScoreboardButton;

if (global.isStartOfGame) {
	visible = true;
} else {
	visible = false;
}