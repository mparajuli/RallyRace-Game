if (x > heroCarObject.x){sprite_index = tankLeftSprite}
else if (x < heroCarObject.x){sprite_index = tankRightSprite}
else if (x == heroCarObject.x){sprite_index = tankLeftSprite}

draw_sprite(sprite_index, image_index, x, y)
draw_self()