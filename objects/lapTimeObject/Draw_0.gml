draw_set_color(c_red);

if (second <= 10){
	draw_text(100, 70, "Lap Time: " + string(minute_show) + ".0" + string(second));
}
else{
	draw_text(100, 70, "Lap Time: " + string(minute_show) + "." + string(second));
}

