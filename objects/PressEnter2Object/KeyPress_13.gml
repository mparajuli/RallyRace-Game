//Stops background audio

if (audio_is_playing(CarSelectionSound))
{
	audio_pause_sound(CarSelectionSound)
}

//Skips to the next room

room_goto_next()


if !audio_is_playing(Transition2Sound)
{
	audio_play_sound(Transition2Sound, 5, false)
}