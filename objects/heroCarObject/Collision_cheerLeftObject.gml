speed = 0;
carHealth -= 0.3;

if carHealth = 0{
	//audio_play_sound(gameOverSound, 1, false)
	show_message("The car is completely damaged!")
	room_restart()
}