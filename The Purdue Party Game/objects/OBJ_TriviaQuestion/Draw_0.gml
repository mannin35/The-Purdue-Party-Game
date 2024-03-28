/// @Draw question and answers
	draw_set_color($68F5FF);
	draw_set_font(Ft_Trivia);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_self();
	xOrigin = x - 128;
	yOrigin = y - 64;
	questionX = x;
	questionY = y - 72;
	answerX = xOrigin - 8;
	answerY = yOrigin + 12;
	// Draw question
	draw_text(questionX, questionY, questionText);
	// Draw answers
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	for (i = 0; i < 4; i++) {
		draw_text(answerX, answerY, answers[i]);
		// Answers spaced 30 pixels apart
		answerY += 38;
	}
	
	




















