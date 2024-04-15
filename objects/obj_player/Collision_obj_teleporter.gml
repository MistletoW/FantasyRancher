/// @description Insert description here
// You can write your code in this editor

//show_debug_message("Teleporting to room: " + string(other.target_room));

if(other.NotWilds){

	room_goto(other.target_room);

	x = other.target_x;
	y = other.target_y;
} else {
	room_goto(other.target_room);
}


