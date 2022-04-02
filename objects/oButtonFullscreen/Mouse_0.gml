if (window_get_fullscreen() == 0) {
	window_set_fullscreen(1);
	image_index = 1;
}
else {
	window_set_fullscreen(0);
	image_index = 0;
}