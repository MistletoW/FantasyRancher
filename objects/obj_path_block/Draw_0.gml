/// @description Insert description here
// You can write your code in this editor

if (message) {
    var vp_x = view_xview[0];
    var vp_y = view_yview[0];
    var vp_w = view_wview[0];
    var vp_h = view_hview[0];

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);  // Set the text color

    // Calculate the center of the viewport
    var cx = vp_x + vp_w / 2;
    var cy = vp_y + vp_h / 2;

    // Draw the message text
    draw_text(cx, cy, message_text);

    // Reset the drawing settings
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_black);
}


