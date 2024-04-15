/// @description decrement timer
	
if (timer > 0) {
	
    timer -= 1;
	
    var minutes = floor(timer / (room_speed * 60));
    var seconds = floor((timer mod (room_speed * 60)) / room_speed);
    timer_string = string(minutes) + ":" + string(seconds);
  
} else {
		
	// communicate resources
		
	// put character back in house
	room = House;
}