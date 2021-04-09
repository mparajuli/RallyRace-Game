direction = 0;

//car movements
forwardSpeed = 4;
backwardSpeed = -4;
turnRadius = 0.8;
acceleration = 0.6;

//smoke from the car
smoke = 10;
time = smoke;

//consumables point
points = 0;
powerUp = 0;
powerUp_max = 20;
powerUp_width = 124;
powerUp_height = 28;
powerUp_x = 365 - (powerUp_width/2);
powerUp_y = ystart - 55;

//current lap
lapCount = 0;
lap = 0;


//car health
carHealth = 100;
carHealth_max = carHealth;

healthBar_width = 124;
healthBar_height = 32;
healthBar_x = 155 - (healthBar_width/2);
healthBar_y = ystart - 55;

//display car speed
showSpeed = 0;
maxSpeed = 0;

//lap time counter
minute = 0;
minute_show = string_format(minute, 2, 0);
minute_show = string_replace(minute_show, " " , "0");
second = 0;
