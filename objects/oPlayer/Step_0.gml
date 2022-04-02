//Input | Ввод//
keyUp = keyboard_check(kbUp);
keyDown = keyboard_check(kbDown);
keyRight = keyboard_check(kbRight);
keyLeft = keyboard_check(kbLeft);
keyJump = keyboard_check_pressed(kbJump);
keySprint = keyboard_check(kbSprint);
keyAttack = keyboard_check_pressed(kbAttack);
inputDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp); //Вычисление направления
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0); //Принимает 0 либо 1, в зависимости от того, нажата одна клавиша или несколько

if (!global.isPause) script_execute(state); //Запуск скрипта состояния

if (instance_exists(oSkeleton)) {
	if (oPlayer.y > oSkeleton.y) {
		oPlayer.depth = 0;
		oSkeleton.depth = 1;
	} else {
		oPlayer.depth = 1;
		oSkeleton.depth = 0;
	}
}