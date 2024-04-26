/// @description Insert description here
// You can write your code in this editor

getinput = false;



newprice = 0;

option = 0;



popUpVisible = false;
activeSlot = -1; // Index of the slot whose button was clicked
popUpOptions = ["yes","No"];
popUpOptionSelected = -1; // Index of the selected option, -1 means none
SellNum = 0;


mouseX = 0;
mouseY = 0;

mouseDX = 0;
mouseDY = 0;
popUpX = 440;
popUpY = 300;
    popUpWidth = 120; 
    popUpHeight = array_length_1d(popUpOptions) * 30 + 20; 
bargainmade = false;

temp = 0;