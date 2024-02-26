/// @description Insert description here
// You can write your code in this editor

//update/draw scoreboard
	
if(visible && calculated) {
	
	draw_set_color($68F5FF);
	draw_set_font(Ft_CooperBlack);
	draw_set_halign(fa_top);
	draw_set_valign(fa_left);
	
	var degree_x = OBJ_Scoreboard.x + 100;
	var bb_x = OBJ_Scoreboard.x + 155;
	draw_self();
	//draw number of degrees for each player
	draw_text(degree_x, OBJ_Scoreboard.y + 3 + 12, players[0].degrees);
	draw_text(degree_x, OBJ_Scoreboard.y + 3 + 53, players[1].degrees);
	draw_text(degree_x, OBJ_Scoreboard.y + 3 + 94, players[2].degrees);
	draw_text(degree_x, OBJ_Scoreboard.y + 3 + 134, players[3].degrees);
	//draw number of bouler bucks for each player
	draw_text(bb_x, OBJ_Scoreboard.y + 3 + 12, players[0].boilerBucks);
	draw_text(bb_x, OBJ_Scoreboard.y + 3 + 53, players[1].boilerBucks);
	draw_text(bb_x, OBJ_Scoreboard.y + 3 + 94, players[2].boilerBucks);
	draw_text(bb_x, OBJ_Scoreboard.y + 3 + 134, players[3].boilerBucks);
}




