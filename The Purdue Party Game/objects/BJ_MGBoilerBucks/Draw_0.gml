/// @description Insert description here
// You can write your code in this editor
if(visible) {
	
	draw_set_color($68F5FF);
	draw_set_font(Ft_CooperBlackMG);
	draw_set_halign(fa_top);
	draw_set_valign(fa_left);
	
	draw_self();
	//draw number of degrees for each player
	//First
	draw_text(165,100, 10);
	//Second
	draw_text(390, 100, 15);
	//Third
	draw_text(165, 195, 5);
	//Fourth
	draw_text(390, 195, 8);
	//draw number of bouler bucks for each player
	//First
	draw_text(165, 70, 60);
	//Second
	draw_text(390, 70, 2);
	//Third
	draw_text(165, 165, 34);
	//Fourth
	draw_text(390, 165, 12);
}



