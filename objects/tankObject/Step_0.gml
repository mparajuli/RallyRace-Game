if(distance_to_object(heroCarObject) < 400 and y > heroCarObject.y ) {

	shootTimer -= 1;

	if shootTimer < 1 {
		p = instance_create_layer(x, y, "Instances", bulletObject);
		p.speed = 20;
		directionToShoot = point_direction(x, y, heroCarObject.x, heroCarObject.y);
		p.direction = directionToShoot;
		shootTimer = shootInterval;
	}

}