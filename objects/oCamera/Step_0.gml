//Куда должна попасть камера
if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}

//Реальная позиция объекта
x += (xTo - x) / 25;
y += (yTo - y) / 25;

//Центрирование камеры
x = clamp(x, view_w_half + 4, room_width - view_w_half - 4);
y = clamp(y, view_h_half + 4, room_height - view_h_half - 4);

//Тряска камеры
x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);
shakeRemain = max(0, shakeRemain - (1/shakeLength) * shakeMagnitude);

//Позиция камеры
camera_set_view_pos(cam, x - view_w_half, y - view_h_half); 

//Параллакс фона
if (layer_exists("Mountains")) {
	layer_x("Mountains", x/2);
}

if (layer_exists("Trees")) {
	layer_x("Trees", x/4);
}