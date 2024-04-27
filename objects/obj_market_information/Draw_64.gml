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
	  case 4:
      draw_sprite(spr_orchid, 0, drawx, drawy);
	  price = 10;
      break;
	  case 5:
      draw_sprite(spr_slime_caught, 0, drawx, drawy);
	   price = 40;
      break;	  
}

 draw_text(drawx + 15, drawy + 80, string("Market price:"));
 draw_text(drawx + 15, drawy + 100, string(global.selectGold));
 draw_text(drawx + 15, drawy + 150, string("Your total gold:"));
 draw_text(drawx + 15, drawy + 180, string(global.playergold));


