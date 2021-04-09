points += 5000;
powerUp += 1; 

alarm[0] = 90;

//power up
if (powerUp = powerUp_max){
	powerUp = 0;
	forwardSpeed += 1;
	showSpeed = abs(hspeed * 51);
	
}

if !audio_is_playing(ConsumableSound)
{
	audio_play_sound(ConsumableSound, 1, false)
}