/// @description movement

var keyleft = keyboard_check(vk_left);
var keyright = keyboard_check(vk_right);
var keyup = keyboard_check(vk_up);
var keydown = keyboard_check(vk_down);

var move_hor = keyright - keyleft;
hsp = move_hor * spd;

var move_vert = keyup - keydown;
vsp = move_vert * spd;

// horizontal collision with trees
if (place_meeting(x + hsp, y, obj_tree_wilds)) {
	while (!place_meeting(x + sign(hsp), y, obj_tree_wilds)) {
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

// vertical collision with trees
if (place_meeting(x, y + vsp, obj_tree_wilds)) {
	while (!place_meeting(x, y + sign(vsp), obj_tree_wilds)) {
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;