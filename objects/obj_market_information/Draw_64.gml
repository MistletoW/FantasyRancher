/// @description Insert description here
// You can write your code in this editor

switch (global.item_information){
      case 1:
      draw_sprite(spr_bone, 0, drawx, drawy);
      break;
      case 2:
      draw_sprite(spr_slimejelly, 0, drawx, drawy);
      break;
      case 3:
      draw_sprite(spr_toadstool, 0, drawx, drawy);
	  price = 10;
      break;
}

 draw_text(drawx + 15, drawy + 100, string(price));


