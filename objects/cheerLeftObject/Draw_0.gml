if (xShift == xShiftMax){sprite_index = cheerLeftSprite}
else if (xShift == xShiftMin){sprite_index = cheerRightSprite}

draw_sprite(sprite_index, image_index, x + xShift, y)