dead_zone = .2;
hsp = 0;
vsp = 0;
walksp = 4;
player = 3; // which player is this? saves time copying
index = global.playerFourIndex;
image_index = index * 3;
over = false;
hit = false;
moving = false; // if a direction is pressed, this will become true and another direction cannot be pressed
vehicle = pointer_null;
//grabInst = pointer_null; // this is the instance created by using the grab

temp_depth = depth; // this is for fixing depth layer during death
dir = -1; // dir to change sprites, 0 = left, 1 = right, 2 = up, 3 = down
grab = false; // if grabbing set this to true
grabbed = false; // if being grabbed set this to player index of who grabbed
grabbedWho = -1 // who did i grab? set this to player index

grabTimer = 0;
//hasMoved = 0; // this is for analog control, make it so the stick needs to be pressed each time 

