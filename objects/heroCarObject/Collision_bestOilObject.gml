speed = 0;
carHealth -= 0.3;

if carHealth <= 0{
	//audio_play_sound(gameOverSound, 1, false)
	if (audio_is_playing(CarRunningSound))
	{
		audio_pause_sound(CarRunningSound)
	}
	if !audio_is_playing(DeathSound)
	{
		audio_play_sound(DeathSound, 1, false)
	}
	if (second <= 10){
			show_message("The car is completely damaged!" + "\nTotal Points: " + string(points) + "\nHighest Speed: " + string(maxSpeed) + " kph\nTotal Lap Time: " + string(minute_show) + ".0" + string(second));
			
	}
	else{
		show_message("The car is completely damaged!" + "\nTotal Points: " + string(points) + "\nHighest Speed: " + string(maxSpeed) + " kph\nTotal Lap Time: " + string(minute_show) + "." + string(second));	
	}
	room_goto_next();
}

if !audio_is_playing(CarCollisionSound)
{
	audio_play_sound(CarCollisionSound, 1, false)
}