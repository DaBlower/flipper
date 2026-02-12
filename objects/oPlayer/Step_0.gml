
x_speed = 0; // reset horizontal speed 

y_speed += 0.4; // add gravity to y_speed

if place_meeting(x,y,oSpikes){
	room_restart()
}

if (y > room_height or y < 0 or x > room_width or x < 0){
	room_restart()
}

if keyboard_check(vk_right) {

    x_speed = walk_speed; 

    image_xscale = -1; // flip heidi's sprite so she faces right

} else if keyboard_check(vk_left) {

    x_speed = -walk_speed; 

    image_xscale = 1; // reset her sprite so she faces left

}

if keyboard_check(vk_right) {  // if the right arrow key is pressed

    x_speed = walk_speed;  // set the horizontal speed to heidi's walk_speed

} else if keyboard_check(vk_left) {  // otherwise, if the left arrow key is pressed

    x_speed = -walk_speed;  // set the horizontal speed to negative heidi's walk_speed, making her move left
}

if place_meeting(x,y + 1,oSolid){ // if player on ground
	if keyboard_check(vk_up) {
		y_speed -= 7; // up is negative y in gamemaker
	} else {
		y_speed = 0; // so we dont fall through the ground
	}
}

move_and_collide(x_speed,y_speed,oSolid)