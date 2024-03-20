/// @description Insert description here
// You can write your code in this editor

if(visible) {
	
	draw_set_color($68F5FF);
	draw_set_font(Ft_CooperBlackMG);
	draw_set_halign(fa_top);
	draw_set_valign(fa_left);
	
	draw_self();
	
	draw_text(42,21, players[global.currentplayer - 1].boilerBucks);
}




