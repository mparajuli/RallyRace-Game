var leftKey = keyboard_check(vk_left);
var rightKey = keyboard_check(vk_right);
var upKey = keyboard_check(vk_up);
var downKey = keyboard_check(vk_down);

if (leftKey) { direction += speed*turnRadius; }
if (rightKey) { direction -= speed*turnRadius; }
if (upKey) { 
	speed += acceleration;
	showSpeed = abs(hspeed * 51);
	
}
if (downKey) {
	speed -= acceleration;
	showSpeed = abs(hspeed * 51);
}

//braking
if (!upKey and !downKey){
	if (friction < 1) { 
		friction += 0.01;
		showSpeed = abs(hspeed * 51 - speed * 51);
	}
}
else { 
	friction = 0; 
}

//limiting speed
if (speed > forwardSpeed) {speed = forwardSpeed;}
if (speed < backwardSpeed) {speed = backwardSpeed;}

//get the maximum speed
if (showSpeed > maxSpeed){
	maxSpeed = showSpeed;
}
	
image_angle = direction;

if (upKey){
	time--;
	
	if (time <= 0){
		time = smoke;
		var xDiff = lengthdir_x(8, direction - 180);
		var yDiff = lengthdir_y(8, direction - 180);
		instance_create_layer(x+xDiff, y+yDiff, "Instances", smokeObject);
	}
}

//put the car inside the map
if (x <= 32) x = 32;
if (x >= room_width - 32) x = room_width - 32;
if (y <= 32) y = 32;
if (y >= room_height - 32) x = room_height - 32;

//game over
if (lap > 3){
	//room_goto_next();
	if (lap > carOneObject.lapOne and lap > carTwoObject.lapTwo){
		if (audio_is_playing(CarRunningSound))
		{
			audio_pause_sound(CarRunningSound)
		}
		
		if !audio_is_playing(CrowdCheeringSound)
		{
			audio_play_sound(CrowdCheeringSound, 1, false)
		}
		if (second <= 10){
			show_message("Congratulations. You win!" + "\nTotal Points: " + string(points) + "\nHighest Speed: " + string(maxSpeed) + " kph\nTotal Lap Time: " + string(minute_show) + ".0" + string(second));
			
		}
		else{
			show_message("Congratulations. You win!" + "\nTotal Points: " + string(points) + "\nHighest Speed: " + string(maxSpeed) + " kph\nTotal Lap Time: " + string(minute_show) + "." + string(second));	
		}
		
	}
	else{
		if (audio_is_playing(CarRunningSound))
		{
			audio_pause_sound(CarRunningSound)
		}
		if !audio_is_playing(UpsetCrowdSound)
		{
			audio_play_sound(UpsetCrowdSound, 1, false)
		}
		
		if (second <= 10){
			show_message("You lose. Better luck next time!" + "\nTotal Points: " + string(points) + "\nHighest Speed: " + string(maxSpeed) + " kph\nTotal Lap Time: " + string(minute_show) + ".0" + string(second));
			
		}
		else{
			show_message("You lose. Better luck next time!" + "\nTotal Points: " + string(points) + "\nHighest Speed: " + string(maxSpeed) + " kph\nTotal Lap Time: " + string(minute_show) + "." + string(second));	
		}
	}
	
	room_goto_next();
	
	if !audio_is_playing(TransitionSound)
	{
	audio_play_sound(TransitionSound, 1, false)
	}
}

//lap time counter
second = second + delta_time / 1000000; // delta_time is in million seconds
if (second >= 60){
	minute += 1;
	minute_show = string_format(minute, 2, 0);
	minute_show = string_replace(minute_show, " " , "0");
	second = 0;
}

