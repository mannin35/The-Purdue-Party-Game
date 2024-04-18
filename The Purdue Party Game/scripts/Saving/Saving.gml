// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_game(){
	var file = file_text_open_write("save.txt")
	//Player Sprites
	file_text_write_string(file, string(sprite_get_name(OBJ_Player1Local.sprite_index)));
	file_text_writeln(file);
	file_text_write_string(file, string(sprite_get_name(OBJ_Player2Local.sprite_index)));
	file_text_writeln(file);
	file_text_write_string(file, string(sprite_get_name(OBJ_Player3Local.sprite_index)));
	file_text_writeln(file);
	file_text_write_string(file, string(sprite_get_name(OBJ_Player4Local.sprite_index)));
	file_text_writeln(file);
	//Player Sprites Indexes
	file_text_write_real(file, global.playerOneIndex);	
	file_text_write_real(file, global.playerTwoIndex);
	file_text_write_real(file, global.playerThreeIndex);
	file_text_write_real(file, global.playerFourIndex);
	//Player Colors
	file_text_write_real(file, OBJ_Player1Local.color);	
	file_text_write_real(file, OBJ_Player2Local.color);
	file_text_write_real(file, OBJ_Player3Local.color);
	file_text_write_real(file, OBJ_Player4Local.color);
	//Player Degrees
	file_text_write_real(file, OBJ_Player1Local.degrees);	
	file_text_write_real(file, OBJ_Player2Local.degrees);
	file_text_write_real(file, OBJ_Player3Local.degrees);
	file_text_write_real(file, OBJ_Player4Local.degrees);
	//Player Boiler Bucks
	file_text_write_real(file, OBJ_Player1Local.boilerBucks);	
	file_text_write_real(file, OBJ_Player2Local.boilerBucks);	
	file_text_write_real(file, OBJ_Player3Local.boilerBucks);	
	file_text_write_real(file, OBJ_Player4Local.boilerBucks);
	//Player Items
	file_text_write_real(file, OBJ_Player1Local.items[0]); file_text_write_real(file, OBJ_Player1Local.items[1]); file_text_write_real(file, OBJ_Player1Local.items[2]);
	file_text_write_real(file, OBJ_Player2Local.items[0]); file_text_write_real(file, OBJ_Player2Local.items[1]); file_text_write_real(file, OBJ_Player2Local.items[2]);
	file_text_write_real(file, OBJ_Player3Local.items[0]); file_text_write_real(file, OBJ_Player3Local.items[1]); file_text_write_real(file, OBJ_Player3Local.items[2]);
	file_text_write_real(file, OBJ_Player4Local.items[0]); file_text_write_real(file, OBJ_Player4Local.items[1]); file_text_write_real(file, OBJ_Player4Local.items[2]);
	//Current Turn
	file_text_write_real(file, global.currentplayer);
	//Current turn count
	file_text_write_real(file, global.turns);
	//Number of real players
	file_text_write_real(file, global.realPlayerCount);
	//CPU Difficulties
	file_text_write_real(file, global.difficultyOne);
	file_text_write_real(file, global.difficultyTwo);
	file_text_write_real(file, global.difficultyThree);
	file_text_write_real(file, global.difficultyFour);
	//CPU Array
	file_text_write_real(file, global.CPUSettings[0]);
	file_text_write_real(file, global.CPUSettings[1]);
	file_text_write_real(file, global.CPUSettings[2]);
	file_text_write_real(file, global.CPUSettings[3]);
	//Bonus Degree Stats
	//For red spaces
	file_text_write_real(file, OBJ_Player1Local.redSpaces);
	file_text_write_real(file, OBJ_Player2Local.redSpaces);
	file_text_write_real(file, OBJ_Player3Local.redSpaces);
	file_text_write_real(file, OBJ_Player4Local.redSpaces);
	//For total boiler bucks
	file_text_write_real(file, OBJ_Player1Local.totalBoilerBucks);
	file_text_write_real(file, OBJ_Player2Local.totalBoilerBucks);
	file_text_write_real(file, OBJ_Player3Local.totalBoilerBucks);
	file_text_write_real(file, OBJ_Player4Local.totalBoilerBucks);
	//Total trivia correct
	file_text_write_real(file, OBJ_Player1Local.triviaCorrect);
	file_text_write_real(file, OBJ_Player2Local.triviaCorrect);
	file_text_write_real(file, OBJ_Player3Local.triviaCorrect);
	file_text_write_real(file, OBJ_Player4Local.triviaCorrect);
	//Minigame wins
	file_text_write_real(file, global.wins[0]);
	file_text_write_real(file, global.wins[1]);
	file_text_write_real(file, global.wins[2]);
	file_text_write_real(file, global.wins[3]);
	//Win Index
	file_text_write_real(file, global.winIndex);
	//Last Minigame
	file_text_write_real(file, OBJ_PlayerInfo.last_minigame);
	//Previously asked trivia
	for(i = 0; i < 11; i++){
		for(j = 0; j < 10; j++){
			file_text_write_real(file, OBJ_TriviaInfo.HasAsked[i ,j]);	
		}
	}
	//Player's current spaces
	//Saving X
	file_text_write_real(file, OBJ_Player1Local.x);
	file_text_write_real(file, OBJ_Player2Local.x);
	file_text_write_real(file, OBJ_Player3Local.x);
	file_text_write_real(file, OBJ_Player4Local.x);
	//Saving Y
	file_text_write_real(file, OBJ_Player1Local.y);
	file_text_write_real(file, OBJ_Player2Local.y);
	file_text_write_real(file, OBJ_Player3Local.y);
	file_text_write_real(file, OBJ_Player4Local.y);
	//Space
	file_text_write_real(file, real(OBJ_Player1Local.space.id))
	file_text_write_real(file, real(OBJ_Player2Local.space.id))
	file_text_write_real(file, real(OBJ_Player3Local.space.id))
	file_text_write_real(file, real(OBJ_Player4Local.space.id))
	//Current Degree Space
	file_text_write_real(file, OBJ_DegreeLogic.degreeIndex)
	//Close file
	file_text_close(file);
	file = file_text_open_read("save.txt");
	var content = "";
    while (!file_text_eof(file)) {
        content += file_text_readln(file);
    }
    // Close the file
    file_text_close(file);
	encodedContent = base64_encode(content)
	file = file_text_open_write("save.txt");
	file_text_write_string(file, encodedContent)
	file_text_close(file);
}

function load_game(){
	if(file_exists("save.txt")){
		file = file_text_open_read("save.txt");
		var content = "";
		while (!file_text_eof(file)) {
			content += file_text_readln(file);
		}
		// Close the file
		file_text_close(file);
		decodedContent = base64_decode(content)
		file = file_text_open_write("temp.txt");
		file_text_write_string(file, decodedContent)
		file_text_close(file);
		var file = file_text_open_read("temp.txt")
		//Player Sprites
		
		OBJ_Player1Local.sprite_index = asset_get_index(file_text_read_string(file))
		file_text_readln(file);
		OBJ_Player2Local.sprite_index = asset_get_index(file_text_read_string(file))
		file_text_readln(file);
		OBJ_Player3Local.sprite_index = asset_get_index(file_text_read_string(file))
		file_text_readln(file);
		OBJ_Player4Local.sprite_index = asset_get_index(file_text_read_string(file))
		file_text_readln(file);
		OBJ_Player1Local.image_speed = 0;
		OBJ_Player2Local.image_speed = 0;
		OBJ_Player3Local.image_speed = 0;
		OBJ_Player4Local.image_speed = 0;
		//Player Sprites Indexes
		global.playerOneIndex = file_text_read_real(file);
		global.playerTwoIndex = file_text_read_real(file);
		global.playerThreeIndex = file_text_read_real(file);
		global.playerFourIndex = file_text_read_real(file);
		OBJ_Player1Local.image_index = (3*global.playerOneIndex)+2;
		OBJ_Player2Local.image_index = (3*global.playerTwoIndex)+2;
		OBJ_Player3Local.image_index = (3*global.playerThreeIndex)+2;
		OBJ_Player4Local.image_index = (3*global.playerFourIndex)+2;
		OBJ_Player1Local.walkingIndex = (3*global.playerOneIndex);
		OBJ_Player2Local.walkingIndex = (3*global.playerTwoIndex);
		OBJ_Player3Local.walkingIndex = (3*global.playerThreeIndex);
		OBJ_Player4Local.walkingIndex = (3*global.playerFourIndex);
		//Player Colors
		OBJ_Player1Local.color = file_text_read_real(file);	
		OBJ_Player2Local.color = file_text_read_real(file);
		OBJ_Player3Local.color = file_text_read_real(file);
		OBJ_Player4Local.color = file_text_read_real(file);
		//Player Degrees
		OBJ_Player1Local.degrees = file_text_read_real(file);
		OBJ_Player2Local.degrees = file_text_read_real(file);
		OBJ_Player3Local.degrees= file_text_read_real(file);
		OBJ_Player4Local.degrees = file_text_read_real(file);
		//Player Boiler Bucks
		OBJ_Player1Local.boilerBucks = file_text_read_real(file);	
		OBJ_Player2Local.boilerBucks = file_text_read_real(file);
		OBJ_Player3Local.boilerBucks = file_text_read_real(file);
		OBJ_Player4Local.boilerBucks = file_text_read_real(file);
		//Player Items
		OBJ_Player1Local.items[0] = file_text_read_real(file);	OBJ_Player1Local.items[1] = file_text_read_real(file);	OBJ_Player1Local.items[2] = file_text_read_real(file);
		OBJ_Player2Local.items[0] = file_text_read_real(file);	OBJ_Player2Local.items[1] = file_text_read_real(file);	OBJ_Player2Local.items[2] = file_text_read_real(file);
		OBJ_Player3Local.items[0] = file_text_read_real(file);	OBJ_Player3Local.items[1] = file_text_read_real(file);	OBJ_Player3Local.items[2] = file_text_read_real(file);
		OBJ_Player4Local.items[0] = file_text_read_real(file);	OBJ_Player4Local.items[1] = file_text_read_real(file);	OBJ_Player4Local.items[2] = file_text_read_real(file);
		//Current Turn
		global.currentplayer = file_text_read_real(file);
		//Total turns left
		global.turns = file_text_read_real(file);
		//Number of real players
		global.realPlayerCount = file_text_read_real(file);
		//CPU Difficulties
		global.difficultyOne = file_text_read_real(file);
		global.difficultyTwo = file_text_read_real(file);
		global.difficultyThree = file_text_read_real(file);
		global.difficultyFour = file_text_read_real(file);
		//CPU Array
		global.CPUSettings[0] = file_text_read_real(file); 
		global.CPUSettings[1] = file_text_read_real(file); 
		global.CPUSettings[2] = file_text_read_real(file); 
		global.CPUSettings[3] = file_text_read_real(file); 
		//Bonus Degree Stats
		//For red spaces
		OBJ_Player1Local.redSpaces = file_text_read_real(file);
		OBJ_Player2Local.redSpaces = file_text_read_real(file);
		OBJ_Player3Local.redSpaces = file_text_read_real(file);
		OBJ_Player4Local.redSpaces = file_text_read_real(file);
		//For total boiler bucks
		OBJ_Player1Local.totalBoilerBucks = file_text_read_real(file);
		OBJ_Player2Local.totalBoilerBucks = file_text_read_real(file);
		OBJ_Player3Local.totalBoilerBucks = file_text_read_real(file);
		OBJ_Player4Local.totalBoilerBucks = file_text_read_real(file);
		//Total trivia correct
		OBJ_Player1Local.triviaCorrect = file_text_read_real(file);
		OBJ_Player2Local.triviaCorrect = file_text_read_real(file);
		OBJ_Player3Local.triviaCorrect = file_text_read_real(file);
		OBJ_Player4Local.triviaCorrect = file_text_read_real(file);
		//Minigame wins
		global.wins[0] = file_text_read_real(file);
		global.wins[1] = file_text_read_real(file);
		global.wins[2] = file_text_read_real(file);
		global.wins[3] = file_text_read_real(file);
		//Win Index
		global.winIndex = file_text_read_real(file);
		//Last Minigame
		OBJ_PlayerInfo.last_minigame = file_text_read_real(file);
		//Previously asked trivia
		for(i = 0; i < 11; i++){
			for(j = 0; j < 10; j++){
				OBJ_TriviaInfo.HasAsked[i ,j] = file_text_read_real(file);	
			}
		}
		//Player's current spaces
		//Saving X
		OBJ_Player1Local.x = file_text_read_real(file);
		OBJ_Player2Local.x = file_text_read_real(file);
		OBJ_Player3Local.x = file_text_read_real(file);
		OBJ_Player4Local.x = file_text_read_real(file);
		//Saving Y
		OBJ_Player1Local.y = file_text_read_real(file);
		OBJ_Player2Local.y = file_text_read_real(file);
		OBJ_Player3Local.y = file_text_read_real(file);
		OBJ_Player4Local.y = file_text_read_real(file);
		//Space
		OBJ_Player1Local.space = file_text_read_real(file);
		OBJ_Player2Local.space = file_text_read_real(file);
		OBJ_Player3Local.space = file_text_read_real(file);
		OBJ_Player4Local.space = file_text_read_real(file);
		//Current Degree
		OBJ_DegreeLogic.degreeIndex = file_text_read_real(file);
		//Close File
		file_text_close(file);
		OBJ_DegreeLogic.degrees = [Space14, Space35, Space113];
		if(global.hasLoaded){
		OBJ_DegreeLogic.currentDegreeSpace = OBJ_DegreeLogic.degrees[OBJ_DegreeLogic.degreeIndex];
		OBJ_DegreeLogic.currentDegreeSpace.hasDegree = true;
		OBJ_DegreeLogic.degreeLocal = instance_create_layer(OBJ_DegreeLogic.currentDegreeSpace.x, OBJ_DegreeLogic.currentDegreeSpace.y, "Instances", OBJ_DegreeLocal)
		OBJ_DegreeLogic.degreeFull = instance_create_layer(OBJ_DegreeLogic.currentDegreeSpace.x, OBJ_DegreeLogic.currentDegreeSpace.y, "Instances", OBJ_DegreeFull)
		}
		global.hasLoaded = true;
		ResetButtons(global.currentplayer)
		global.accoladesCalculated = false;
		global.winIndex = 0;
		global.bbIndex = 0;
		global.triviaIndex = 0;
		global.loanIndex = 0;
		//Delete File after Loading
		file_delete("temp.txt")
	}
}