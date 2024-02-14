/// @description Varibales
// You can write your code in this editor

//Dead zone to account for misaligned controllers
dead_zone = .2;
//Knows if it is the current button we are on
current = false;
//Pervents quick flipping through screens
canReturn = false;
//Changes canReturn to true after .25 second
alarm_set(0,15);