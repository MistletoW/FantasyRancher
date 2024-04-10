/// @description Insert description here
// You can write your code in this editor

var playerX = obj_player_farms.x;
var playerY = obj_player_farms.y;
var newCameraX = playerX - 768/2; // Center the camera on the player
var newCameraY = playerY - 768/2;

camera_set_view_pos(camera, newCameraX, newCameraY);


