/// @description Insert description here
// You can write your code in this editor
if(visible && OBJ_MGPlacementFinalOne.calculated) {
	
	draw_set_color($68F5FF);
	draw_set_font(Ft_CooperBlackMG);
	draw_set_halign(fa_top);
	draw_set_valign(fa_left);
	
	draw_self();
	
		//draw number of degrees for each player
		//First
		draw_text(165,100,  OBJ_MGPlacementFinalOne.players[0].degrees);
		//Second
		draw_text(390, 100,  OBJ_MGPlacementFinalOne.players[1].degrees);
		//Third
		draw_text(165, 195,  OBJ_MGPlacementFinalOne.players[2].degrees);
		//Fourth
		draw_text(390, 195,  OBJ_MGPlacementFinalOne.players[3].degrees);
	
		//draw number of boiler bucks for each player
		//First
		draw_text(165, 70,  OBJ_MGPlacementFinalOne.players[0].boilerBucks);
		//Second
		draw_text(390, 70,  OBJ_MGPlacementFinalOne.players[1].boilerBucks);
		//Third
		draw_text(165, 165,  OBJ_MGPlacementFinalOne.players[2].boilerBucks);
		//Fourth
		draw_text(390, 165,  OBJ_MGPlacementFinalOne.players[3].boilerBucks);
	

}
