/// @description Insert description here
// You can write your code in this editor
if(visible && OBJ_PlayerOneMGR.calculated) {
	
	draw_set_color($68F5FF);
	draw_set_font(Ft_CooperBlackMG);
	draw_set_halign(fa_top);
	draw_set_valign(fa_left);
	
	draw_self();
	//draw number of degrees for each player
	//First
	draw_text(165,100, OBJ_MGPlacementOne.degreeArray[0]);
	//Second
	draw_text(390, 100, OBJ_MGPlacementOne.degreeArray[1]);
	//Third
	draw_text(165, 195, OBJ_MGPlacementOne.degreeArray[2]);
	//Fourth
	draw_text(390, 195, OBJ_MGPlacementOne.degreeArray[3]);
	//draw number of bouler bucks for each player
	//First
	draw_text(165, 70, OBJ_MGPlacementOne.boilerBuckArray[0]);
	//Second
	draw_text(390, 70, OBJ_MGPlacementOne.boilerBuckArray[1]);
	//Third
	draw_text(165, 165, OBJ_MGPlacementOne.boilerBuckArray[2]);
	//Fourth
	draw_text(390, 165, OBJ_MGPlacementOne.boilerBuckArray[3]);
}



