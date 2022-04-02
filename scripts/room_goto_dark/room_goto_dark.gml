// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_goto_dark(r, dark_spd){
	with oRoomManager {
		if (global.dark == 0) {
			spd = dark_spd;
			global.prevRoom = room;
			alarm[0] = 1;
			roomTo = r;
		}
	}
}