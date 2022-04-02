/// @description Затемнение
if (global.dark < 1) {
	global.dark += spd;
	alarm[0] = 1;
} else {
	room_goto(roomTo);
	alarm[1] = 1;
}