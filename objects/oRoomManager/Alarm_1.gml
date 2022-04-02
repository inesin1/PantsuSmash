/// @description Осветление
if (global.dark > 0) {
	global.dark -= spd;
	alarm[1] = 1;
}