/// @description Insert description here
// You can write your code in this editor
visible = false;
calculated = false;
global.doubleDice = false;
global.slowDice = false;

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vwidth = camera_get_view_width(view_camera[0]);
var vheight = camera_get_view_height(view_camera[0]);
x = vx + ((vwidth - sprite_width)/2);
y = vy + ((vheight - sprite_height)/2) - 15;
players = [OBJ_Player1Local, OBJ_Player2Local, OBJ_Player3Local, OBJ_Player4Local];
global.swap = false;
playerToSwap = -1;
counter = 0;





