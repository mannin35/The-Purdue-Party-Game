/// @description Insert description here
// You can write your code in this editor


//switch buttons
randomize();
newButton = irandom_range(1,6);
while(buttonCombo == newButton) {
	newButton = irandom_range(1,6);
}
buttonCombo = newButton;

image_index = buttonCombo;

alarm[0] = irandom_range(120, 300);