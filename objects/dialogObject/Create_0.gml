text[0] = "Welcome to the RallyRace!!!";
text[1] = "Press 'Space' to restart the room.";

text_current = 0; //current text array position
text_last = 1;    //last array position
text_width = 300; //maximum width before the line breaks
text_x = x - 50;
text_y = y - 30;  // y-position

char_current = 1;
char_speed = 0.15; //text speed

//calling the script function
text[text_current] = dialog_script(text[text_current], text_width);