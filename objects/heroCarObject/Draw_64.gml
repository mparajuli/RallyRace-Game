//draw consumable points
draw_text_color(0, 70, "Rally Points: " + string(points), c_red, c_red, c_red, c_red, 1);

//draw healthbar
//healthbar background
//draw_sprite(healthSprite, 0, healthBar_x, healthBar_y);
draw_text_color(0, 110, "Car Health: ", c_red, c_red, c_red, c_red, 1);
draw_sprite_stretched(healthSprite, 0, healthBar_x, healthBar_y,(carHealth/carHealth_max) * healthBar_width, healthBar_height);

//healthbar border
//draw_sprite(healthSprite, 0, healthBar_x, healthBar_y); 


//display the current lap
if (lap <= 3){
	draw_text_color(250, 50, "Current lap: " + string(lap) + "/3", c_red, c_red, c_red, c_red, 1);
}
else{
	draw_text_color(250, 50, "Current lap: " + "3" + "/3", c_red, c_red, c_red, c_red, 1);
}


//view speed
draw_text_color(0, 50, "Speed: " + string(showSpeed) + " kph", c_red, c_red, c_red, c_red, 1);

//show powerUp
draw_text_color(250, 110, "Boost: ", c_red, c_red, c_red, c_red, 1);
draw_sprite_stretched(powerUpSprite, 0, powerUp_x, powerUp_y,(powerUp/powerUp_max) * powerUp_width, powerUp_height);
draw_sprite_stretched(powerUpBorderSprite, 0, powerUp_x - 5, powerUp_y, powerUp_width - 5, powerUp_height);

//show lap time
draw_set_color(c_red);

if (second <= 10){
	draw_text(0, 90, "Lap Time: " + string(minute_show) + ".0" + string(second));
}
else{
	draw_text(0, 90, "Lap Time: " + string(minute_show) + "." + string(second));
}