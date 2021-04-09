//Will initiate brakes sound

if !audio_is_playing(CarBrakingSound)
{
	audio_play_sound(CarBrakingSound, 1, false)
}
