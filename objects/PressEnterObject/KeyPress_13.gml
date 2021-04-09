//Will take you to the next room
room_goto_next()

if (audio_is_playing(TitleScreenSound))
{
	audio_pause_sound(TitleScreenSound)
}

if !audio_is_playing(TransitionSound)
{
	audio_play_sound(TransitionSound, 1, false)
}