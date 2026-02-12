if (global.room_flipped) {
	var m = matrix_build(
		room_width, 0, 0, // move to right edge
		0,0,0,  		  // no rotation
		-1,1,1			  // flip horizontally
	);
	
    matrix_set(matrix_world, m);
}