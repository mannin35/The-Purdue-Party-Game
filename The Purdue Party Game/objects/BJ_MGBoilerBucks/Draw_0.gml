/// @description Insert description here
// You can write your code in this editor
if(visible && OBJ_MGPlacementOne.calculated) {
	
	draw_set_color($68F5FF);
	draw_set_font(Ft_CooperBlackMG);
	draw_set_halign(fa_top);
	draw_set_valign(fa_left);
	
	draw_self();
	
	if(counterTwo <= 180){
		//draw number of degrees for each player
		//First
		draw_text(165,100, OBJ_MGPlacementOne.degreeArray[0]);
		//Second
		draw_text(390, 100, OBJ_MGPlacementOne.degreeArray[1]);
		//Third
		draw_text(165, 195, OBJ_MGPlacementOne.degreeArray[2]);
		//Fourth
		draw_text(390, 195, OBJ_MGPlacementOne.degreeArray[3]);
	
		//draw number of boiler bucks for each player
		//First
		draw_text(165, 70, OBJ_MGPlacementOne.boilerBuckArray[0]);
		//Second
		draw_text(390, 70, OBJ_MGPlacementOne.boilerBuckArray[1]);
		//Third
		draw_text(165, 165, OBJ_MGPlacementOne.boilerBuckArray[2]);
		//Fourth
		draw_text(390, 165, OBJ_MGPlacementOne.boilerBuckArray[3]);
	}
	
	//Draw increase for players, erases when it begins to give coins to player
	if(counter < 0){
		//First
		draw_text(195, 70, "+" + string(OBJ_MGPlacementOne.increase[0]));
	//Second
	draw_text(420, 70, "+" + string(OBJ_MGPlacementOne.increase[1]));
	//Third
	draw_text(195, 165, "+" + string(OBJ_MGPlacementOne.increase[2]));
	//Fourth
	draw_text(420, 165, "+" + string(OBJ_MGPlacementOne.increase[3]));
	}
	
	if(counterTwo >= 212){
	//draw number of degrees for each player
	//First
	draw_text(165,100, players[0].degrees);
	//Second
	draw_text(390, 100, players[1].degrees);
	//Third
	draw_text(165, 195, players[2].degrees);
	//Fourth
	draw_text(390, 195, players[3].degrees);
	
	//draw number of boiler bucks for each player
	//First
	draw_text(165, 70, players[0].boilerBucks);
	//Second
	draw_text(390, 70, players[1].boilerBucks);
	//Third
	draw_text(165, 165, players[2].boilerBucks);
	//Fourth
	draw_text(390, 165, players[3].boilerBucks);	
	}
}



