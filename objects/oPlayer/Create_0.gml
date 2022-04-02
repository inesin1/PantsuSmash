image_speed = 0; //Отключаем анимации
hsp = 0; //Горизонтальная скорость
vsp = 0; //Вертикальная скорость
moveSpeed = 2.5; //Скорость передвижения

soundRunDelay = 20;

//global.hp = 100; //Здоровье
//Инициализация состояния

//Анимации
//spriteDefault = sPlayer; //Спрайт когда стоит
//spriteRun = sPlayerRun; //Спрайт когда бежит
//spriteAttack = sPlayerAttack //Спрайт когда атакует
//spriteJump = sPlayerJump //Спрайт когда прыгает
//localFrame = 0; //С какого кадра начать анимацию

state = PlayerStateFree; //Состояние персонажа

//hitbyAttack = ds_list_create(); //Хитбокс атаки

//Input | Ввод
kbUp = ord("W");
kbDown = ord("S");
kbRight = ord("D");
kbLeft = ord("A");
kbJump = vk_space;
kbSprint = vk_shift;
kbAttack = ord("J");