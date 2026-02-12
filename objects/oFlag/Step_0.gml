if (place_meeting(x, y, oPlayer) && !triggered) {
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