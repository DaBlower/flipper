if (place_meeting(x, y, oPlayer) && !triggered) {
	chance = 0.5; // 1/5 chance to win
	
	if (first_trigger) {
		first_trigger = false;
		chance = 0;
	}
	
	
	if (random(1) < chance){
		room_goto(Win)
	}
	
    triggered = true;         // only trigger once
    global.room_flipped = !global.room_flipped;
	
	pos_index = (pos_index + 1) mod array_length(positions);
    x = positions[pos_index][0];
    y = positions[pos_index][1];
}

// fade
if (triggered && image_alpha < 1) {
    image_alpha = lerp(image_alpha, target_alpha, fade_speed);
}

if (!place_meeting(x, y, oPlayer)) {
    triggered = false;
}