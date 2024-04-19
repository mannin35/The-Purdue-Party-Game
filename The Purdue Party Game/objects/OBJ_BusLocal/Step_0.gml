/// @description Insert description here
// You can write your code in this editor
if(visible && counter != 550){
	if(!soundSet){
		audio_pause_all()
		audio_play_sound(SOUND_Bus, 1, false);
		soundSet = true
	}
	if(OBJ_BusLocal.x = global.localPlayers[global.currentplayer].x){
		counterTwo++;	
		global.localPlayers[global.currentplayer].visible = false;
		if(done){
			global.localPlayers[global.currentplayer].visible = true;	
		}
	}
	if(counterTwo == 0 ||counterTwo == 45){
		OBJ_BusLocal.x += 1;
		counter++;
	}
}
if(counter == 550 && !done){
	if(global.localPlayers[global.currentplayer].space == Space3){
		global.localPlayers[global.currentplayer].space = Space43;
		global.localPlayers[global.currentplayer].x = Space43.x;
		global.localPlayers[global.currentplayer].y = Space43.y;
	} else if (global.localPlayers[global.currentplayer].space == Space43){
		global.localPlayers[global.currentplayer].space = Space88;
		global.localPlayers[global.currentplayer].x = Space88.x;
		global.localPlayers[global.currentplayer].y = Space88.y;
	} else {
		global.localPlayers[global.currentplayer].space = Space3;
		global.localPlayers[global.currentplayer].x = Space3.x;
		global.localPlayers[global.currentplayer].y = Space3.y;
	}
	counter = 0
	counterTwo = 0
	x = global.localPlayers[global.currentplayer].x-256;
	y =  global.localPlayers[global.currentplayer].y;
	done = true;
}

if(counter == 550 && done){
	counter = 0;
	counterTwo = 0;
	done = false;
	global.localPlayers[global.currentplayer].alarm[0] = 120;
	audio_pause_all()
	audio_play_sound(SOUND_Map, 1, true)
	soundSet = false;
	visible = false;
}





