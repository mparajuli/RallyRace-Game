
if (isAI){
	if (destination < x){ speed = -forwardSpeed + 1;}
	else { speed = forwardSpeed - 1;}
	
	if (speed > forwardSpeed) {speed = forwardSpeed;}
	if (speed < backwardSpeed) {speed = backwardSpeed;}
	
	if (place_meeting(x, y, lapCountObject)){
		speed = forwardSpeed; 			
		lapCountTwo += 1;
		lapTwo = round(lapCountTwo/16);
	}
		
	if (lapTwo > 3){
		friction += 0.05;
		//show_message("Car Two win"); 
	}
		
}