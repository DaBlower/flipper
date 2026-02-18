
x_speed = 0; // reset horizontal speed 

y_speed += 0.4; // add gravity to y_speed

if place_meeting(x,y,oSpikes){
	room_restart()
}

if (y > room_height or y < 0 or x > room_width or x < 0){
	room_restart()
}

if keyboard_check(vk_right) {
	
	if (sprite_index != 0) {
		sprite_index = 1;
	}

    x_speed = walk_speed; 

    image_xscale = 0.5; // flip the player's sprite so she faces right

} else if keyboard_check(vk_left) {
	if (sprite_index != 0) {
		sprite_index = 1;
	}

    x_speed = -walk_speed; 

    image_xscale = -0.5; // reset the sprite so it faces left

} else {
		if (sprite_index != 0) {
		sprite_index = 1;
	}
	sprite_index = 1
}


if (tile_get_index(tilemap_get_at_pixel(tilemap_id, x, y)) != 0) { // if player on ground
	if keyboard_check(vk_up) {
		y_speed -= 8; // up is negative y in gamemaker
	} else {
		y_speed = 0; // so we dont fall through the ground
	}
}

move_and_collide(x_speed,y_speed,oSolid)