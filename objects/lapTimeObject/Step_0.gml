second = second + delta_time / 1000000; // delta_time is in million seconds
if (second >= 60){
	minute += 1;
	minute_show = string_format(minute, 2, 0);
	minute_show = string_replace(minute_show, " " , "0");
	second = 0;
}
