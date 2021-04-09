if (isAI){
	
		if (destination < x){ speed = -forwardSpeed + 1;}
		else { speed = forwardSpeed - 1;}
	
		if (speed > forwardSpeed) {speed = forwardSpeed;}
		if (speed < backwardSpeed) {speed = backwardSpeed;}
		
		if (place_meeting(x, y, lapCountObject)){
				speed = forwardSpeed; 			
				lapCountOne += 1;
				lapOne = round(lapCountOne/21);
		}	
		
		if (lapOne > 3){
		//room_goto_next();
			friction += 0.03;
			//show_message("Car One win"); 
			//room_restart();
		}
}


