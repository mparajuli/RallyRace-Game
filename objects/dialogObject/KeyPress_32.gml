char_speed = 0.50;
var _len = string_length(text[text_current]);
if (char_current < _len)
{
    char_current = _len;
}
else
{
	text_current += 1;
	if (text_current > text_last)
	{
	    room_restart();
		audio_play_sound(welcomeSound, 1, false);
	}
	else
	{
	    text[text_current] = dialog_script(text[text_current], text_width);
	    char_current = 0;
	}
}