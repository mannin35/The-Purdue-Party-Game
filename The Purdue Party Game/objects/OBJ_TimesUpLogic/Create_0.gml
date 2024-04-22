/// Object in charge of spawing clocks, getting player positions, and leaving minigame when needed
players = [OBJ_PlayerOneTimesUp, OBJ_PlayerTwoTimesUp, OBJ_PlayerThreeTimesUp, OBJ_PlayerFourTimesUp];
global.minigameResults = [4, 4, 4, 4];
Obj_Demo.image_speed = 1/16;
// Clock falling speed
clockSpeed = 2;

// Keeps track of players finishing
place = 1;
finished = false;
updated = false;
// Timer variables
timer_active = false;
timer = 15;

// Player sprite height + gap 
minWait = (32 + 16) / clockSpeed;
wasDouble = false;
side = -1;
clockX = 0;

clock = pointer_null;
// DS queue of clocks (FIFO)
//clockQueues = [ds_queue_create(), ds_queue_create(), ds_queue_create(), ds_queue_create()];
// Start spawning clocks after one second
alarm[0] = 60;

global.localPlayers[0].visible = false; // bugfix!!!
global.localPlayers[1].visible = false;
global.localPlayers[2].visible = false;
global.localPlayers[3].visible = false;

function dropThemClocks(xpos) {
	for (i = 0; i < 4; i++) {
		var clockY = players[i].y - (192);
		if (clockY >= 64) {
			clock = instance_create_layer(xpos + (128 * i), clockY, layer, OBJ_FallingClock);
			clock.player = players[i];
			//ds_queue_enqueue(clockQueues[i], clock);
		}
	}
}
function generateRandomSide() {
	side = irandom_range(0, 3);
	switch (side) {
		case 0:
			clockX = 16;
			break;
		case 2:
			clockX = 112;
			break;
		default:
			clockX = 64;
			side = 1;
	}
}

function endGame() {
	global.minigameOver = true;
	global.localPlayers[0].visible = true; // bugfix!!!
global.localPlayers[1].visible = true;
global.localPlayers[2].visible = true;
global.localPlayers[3].visible = true;
}